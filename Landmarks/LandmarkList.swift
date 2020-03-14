//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ty Pham on 3/1/20.
//  Copyright © 2020 Ty Pham. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @State var showFavoritesOnly = true
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorite Only")
                }
                ForEach(landmarkData) { landmark in
                    if !self.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink (destination:ContentView(landmark: landmark)){
                            LandmarkRow(landmark: landmark)
                        }
                    }
                    
                }
            }
            .navigationBarTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
