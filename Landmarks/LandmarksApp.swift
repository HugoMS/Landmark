//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Hugo Morelli on 26/2/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
