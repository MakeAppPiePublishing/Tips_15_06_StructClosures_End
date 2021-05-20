//
//  ComputedGradientView.swift
//  StructClosures
//
//  Created by Steven Lipton on 5/18/21.
//

import SwiftUI

let RBgradient = Gradient(colors: [.red,.blue])

struct ComputedGradientView:View {
    var steps:Int
    var gradient:(Int)->Gradient
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(LinearGradient(gradient: gradient(steps), startPoint: .top, endPoint: .bottom))
        }
    }
}

struct ComputedGradientView_Previews: PreviewProvider {
    static var previews: some View {
        ComputedGradientView(steps: 5){ _ in
            return RBgradient
        }
    }
}
