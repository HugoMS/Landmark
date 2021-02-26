//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Hugo Morelli on 26/2/21.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true

    var filteredLandmarks: [Landmark] {
            landmarks.filter { landmark in
                (!showFavoritesOnly || landmark.isFavorite)
            }
        }

    var body: some View {
        NavigationView {
            List(filteredLandmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
                .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
        }
    }
}
