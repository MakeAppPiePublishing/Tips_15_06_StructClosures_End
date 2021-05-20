//
//  ContentView.swift
//  StructClosures
//
//  Created by Steven Lipton on 5/18/21.
//

import SwiftUI

struct ContentView:View {
    let gradientCount:Int = 12
    let columns = Array(repeating:GridItem(spacing:15), count:3)
    
    var body: some View{
        VStack{
            Text("A Gradient Closure Demo").font(.headline)
            LazyVGrid(columns:columns, spacing:15){
                ForEach(0..<gradientCount){count in
                    ZStack {
                        ComputedGradientView(steps: count) { color in
                            var colors = [Color.red]
                            for c in 0..<color{
                                let stepColor = Double(c) / Double(gradientCount)
                                colors += [Color(hue: stepColor, saturation: 1.0, brightness: 1.0)]
                            }
                            return Gradient(colors:colors)
                        }
                        Image(systemName:"\(count).circle")
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                    
                }
                .frame(height:100)
            }
                
            .padding()
        }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
