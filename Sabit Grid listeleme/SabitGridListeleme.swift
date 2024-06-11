//
//  ContentView.swift
//  Sabit Grid listeleme
//
//  Created by Mert Baykal on 04/06/2024.
//

import SwiftUI

struct SabitGridListeleme: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyVGrid(columns: [
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible())
            ], spacing: 20) {
                SabitGridItem(text: "Sun", image: "sun.min")
                    .onTapGesture {
                        print("sun")
                    }
                SabitGridItem(text: "Moon", image: "moon")
                    .onTapGesture {
                        print("moon")
                    }
                SabitGridItem(text: "Star", image: "star")
                    .onTapGesture {
                        print("star")
                    }
                SabitGridItem(text: "cloud", image: "cloud")
            }
        }.padding(10)
    }
}

struct SabitGridItem: View {
    var text:String
    var image:String
    var body: some View {
        VStack {
            Image(systemName: image)
            Text(text)
        }.frame(width: 100,height: 100)
            .border(.gray)
    }
    #Preview {
        SabitGridListeleme()
    }
}
