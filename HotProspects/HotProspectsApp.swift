//
//  HotProspectsApp.swift
//  HotProspects
//
//  Created by Rumit Singh Tuteja on 6/11/24.
//

import SwiftData
import SwiftUI

@main
struct HotProspectsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Prospect.self)
        // creates the data store and a model context for the prospect class
        // also places that shared model context so that it can be accessed in every SwiftUI view, through environment
    }
}
