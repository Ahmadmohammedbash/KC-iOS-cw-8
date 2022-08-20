//
//  ContentView.swift
//  mydairy
//
//  Created by Ahmad Bash on 20/08/2022.
//

import SwiftUI

struct ContentView: View {
    let color = [Color.indigo.opacity(0.4),Color.blue.opacity(0.4),Color.yellow.opacity(0.4), Color.pink.opacity(0.4),]
    
    @State var mynote = ""
    @State var selected = Color.indigo.opacity(0.4)
    var body: some View {
        NavigationView{
            ZStack{
        Color.red.opacity(0.4)
                    .ignoresSafeArea()
                VStack{
                    Text ("choose your color")
                        .font(.system(size: 25))
                    HStack{
                        ForEach(color, id:\.self){
                            color in
        Circle()
            .fill(color)
            .frame(width: 50, height: 50)
            .onTapGesture {
                selected = color
            }
                        }
                    }
                    .padding()
                    Text("what do you want to write")
        .font(.system(size: 20))
                    
        TextField("write here", text: $mynote)
            .background()
            .font(.largeTitle)
            Spacer()
    NavigationLink {
                        secondView()
                    } label: {
            Text("save")
        .foregroundColor(.white)
        .background(Color.black)
        .font(.largeTitle)
                    }

    
            
               }
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
