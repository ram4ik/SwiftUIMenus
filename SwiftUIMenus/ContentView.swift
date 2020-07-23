//
//  ContentView.swift
//  SwiftUIMenus
//
//  Created by ramil on 23.07.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Menu("Options") {
                Button("Do something", action: one)
                Button("Try something", action: two)
                
                Menu("Another Options") {
                    Button("Do something again", action: one)
                    Button("Try something again", action: two)
                }
                Button("Cancel", action: cancel)
            }
            
            Menu {
                Button("Do something again", action: one)
                Button("Try something again", action: two)
            } label: {
                Label("Options", systemImage: "paperplane")
            }
        }
    }
    
    func one() {}
    func two() {}
    func cancel() {}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
