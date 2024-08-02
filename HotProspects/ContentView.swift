//
//  ContentView.swift
//  HotProspects
//
//  Created by Rumit Singh Tuteja on 6/11/24.
//


import SamplePackage
import SwiftData
import SwiftUI
import UserNotifications


struct ContentView: View {
    
    
    @State private var viewModel = ViewModel()
    
    var body: some View {
            TabView {
                
                ProspectsView(filter: .none)
                    .tabItem {
                        Label("Everyone", systemImage: "person.3")
                    }
                
                ProspectsView(filter: .contacted)
                    .tabItem {
                        Label("Contacted", systemImage: "checkmark.circle")
                    }
                
                ProspectsView(filter: .uncontacted)
                    .tabItem {
                        Label("Uncontacted", systemImage: "questionmark.diamond")
                    }
                
                MeView()
                    .tabItem {
                        Label("Me", systemImage: "person.crop.square")
                    }
            }
    }
}


extension ContentView {
    
    @Observable
    class ViewModel {
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Prospect.self)
}
