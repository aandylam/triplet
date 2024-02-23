//
//  OverviewViewModel.swift
//  Triplet
//
//  Created by Derek Ma on 2/22/24.
//

import SwiftUI
import MapKit

class OverviewViewModel: ObservableObject {
    @Published var toggleStates = ToggleStates()
    @Published var cameraPosition = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 47.608013, longitude: -122.335167), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)))
    @Published var notes: [Note] = []
    @Published var showAlert: Bool = false
    @Published var newNoteTitle: String = ""
    @Published var validationError: String = ""
    
    let minHeight: CGFloat = 150.0
    let maxHeight: CGFloat = 300.0
    
    func addNote() {
        guard !newNoteTitle.isEmpty else {
            print("Note name must be non-empty")
            return
        }
        withAnimation {
            notes.append(Note(title: newNoteTitle))
            newNoteTitle = ""
        }
    }
}

struct ToggleStates {
    var notes: Bool = true
    var housing: Bool = true
    var food: Bool = true
}
