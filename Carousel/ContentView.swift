//
//  ContentView.swift
//  Carousel
//
//  Created by Sharuban Sharu on 4/21/25.
//

import SwiftUI

struct ContentView: View {
    let images = [ "1","2","3","4","5","6"]
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack{
                ForEach(images, id: \.self){
                    image in Image(image)
                        .resizable()
                        .containerRelativeFrame(.horizontal)
                        .clipShape(RoundedRectangle(cornerRadius:20))
                        .scrollTransition { content, phase in content
                                .scaleEffect(
                                    x : phase.isIdentity ? 1.0 : 0.8,
                                    y : phase.isIdentity ? 1.0 : 0.8
                                )
                                .offset(y :phase.isIdentity ? 0: 200)
                        }
                }
            }
        }
        .contentMargins(20)
        .background(.indigo)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
