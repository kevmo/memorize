//
//  ContentView.swift
//  Memorize
//
//  Created by Kevin Moore on 6/26/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            Image(systemName: "link")
                .imageScale(.large)
                .foregroundColor(.green)
            Text("Hello, biaa biaa!")
        }
        .padding()
        .font(.largeTitle)
    }
}

#Preview {
    ContentView()
}
