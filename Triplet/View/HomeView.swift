//
//  HomeView.swift
//  Triplet
//
//  Created by Xiaolin Ma on 2/22/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            MyTripsView()
                .tabItem {
                Label("Menu", systemImage: "list.dash")
                }
            Text("New trip")
                .tabItem {
                    Label("New Trip", systemImage: "square.and.pencil")
                }
            
            SettingView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
    }
}

#Preview {
    HomeView()
}
