//
//  ContentView.swift
//  Memorize
//
//  Created by Seunghun Yang on 2021/04/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: false)
            }
        }
        .foregroundColor(.orange)
        .font(.largeTitle)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 10)
                    .stroke()
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10)
                    .fill()
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
