//
//  ShapesView.swift
//  AwordsCollectionApp
//
//  Created by Alexey Efimov on 05.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    
                    GradientRectangles(width: 250, height: 250)
                    PathView(width: 250, height: 250)
                    CurvesView(width: 250, height: 250)
                    Overlapping(width: 50, height: 50)
                        .padding(.top, 75)
                        .scaleEffect(1.4)
                    
                }
            }
            .navigationBarTitle("Awards")
        }
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
