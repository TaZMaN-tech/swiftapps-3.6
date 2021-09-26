//
//  Overlapping.swift
//  AwordsCollectionApp
//
//  Created by Тадевос Курдоглян on 26.09.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct Overlapping: View {
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .stroke()
                .frame(width: 75, height: 75)
                .opacity(0)
            RoundRect()
                .foregroundColor(.blue)
            RoundRect()   //second
                .foregroundColor(.green)
                .rotationEffect(.degrees(-90))
            RoundRect()   //third
                .foregroundColor(.pink)
                .rotationEffect(.degrees(90))
            RoundRect()   //fourth
                .foregroundColor(.orange)
                .rotationEffect(.degrees(180))
            RoundRect()   //fifth
                .foregroundColor(.green)
                .rotationEffect(.degrees(-45))
            RoundRect()   //sixth
                .foregroundColor(.purple)
                .rotationEffect(.degrees(45))
            RoundRect()   //seventh
                .foregroundColor(.yellow)
                .rotationEffect(.degrees(-135))
            RoundRect()   //eighth
                .foregroundColor(.red)
                .rotationEffect(.degrees(135))
        }
        .frame(width: width * 0.7, height: height * 0.7)
    }

}

struct Overlapping_Previews: PreviewProvider {
    static var previews: some View {
        Overlapping(width: 200, height: 200)
    }
}

struct RoundRect: View {
    var body: some View {
        Capsule()
            .offset(y: 38)
            .frame(width: 50, height: 70)
            .opacity(0.6)
    }
}
