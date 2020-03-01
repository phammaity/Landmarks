//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ty Pham on 3/1/20.
//  Copyright © 2020 Ty Pham. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List (landmarkData){ landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
