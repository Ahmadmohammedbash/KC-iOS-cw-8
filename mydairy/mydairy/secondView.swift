//
//  secondView.swift
//  mydairy
//
//  Created by Ahmad Bash on 20/08/2022.
//

import SwiftUI

struct secondView: View {
    var body: some View {
        ZStack{
            Color.blue
        .scaledToFill()
        Text("welcome")
                .font(.largeTitle)
                .foregroundColor(Color.red)
                .background(Color.black)
    }
    }
}

struct secondView_Previews: PreviewProvider {
    static var previews: some View {
        secondView()
    }
}
