//
//  ContentView.swift
//  Memorize
//
//  Created by Kevin Moore on 6/26/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["🎃", "💀", "🧛‍♂️", "🍬", "👹", "🧌", "🐺", "🐈‍⬛", "", "🪦", "", "⚰️", "🕸️",  🥀]
    
    var body: some View {
        VStack {
            ScrollView {
                cards
            }
            Spacer()
            cardCountAdjusters
        }
        .padding()
    }
    
    var cards: some View {
        Text("XOK")
    }
    
    var cardCountAdjusters: some View {
        Text("XOK")
    }
}

struct QuarterBox: View {
    @State var isFaceUp: Bool
    
    var body: some View {
        ZStack { // this is a trailing closure
            
            let base = RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                Text("👻")
            } else {
                base.fill()
                Text("🕳️")
            }
        }
        .onTapGesture {
            print("tapped")
            isFaceUp.toggle()
        }

    }
}

#Preview {
    ContentView()
}
