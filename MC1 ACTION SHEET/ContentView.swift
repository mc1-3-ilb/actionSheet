//
//  ContentView.swift
//  MC1 ACTION SHEET
//
//  Created by Nadia Ramadhani on 12/05/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingOptions = false
    @State private var selection = "None"

    var body: some View {
        VStack {
            Text(selection)

            Button("Show Options") {
                showingOptions = true
            }
            .actionSheet(isPresented: $showingOptions) {
                ActionSheet(
                    title: Text("Add new notes file"),
                    buttons: [
                        .default(Text("Notes")) {
                            selection = "Red"
                        
                        },

                        .default(Text("Voice note")) {
                            selection = "Green"
                        },

                        .default(Text("Take photo")) {
                            selection = "Blue"
                        },
                        .default(Text("Import photo")) {
                            selection = "Blue"
                        },
                        .cancel()
                    ]
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
