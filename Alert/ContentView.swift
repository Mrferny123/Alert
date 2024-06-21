//
//  ContentView.swift
//  Alert
//
//  Created by Nissi Sanju on 6/21/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var year = ""
    @State private var presentAlert = false
    var body: some View {
        VStack {
            TextField("What's your name?", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.black, width: 2)
            TextField("What year were you born?", text: $year)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.black, width: 2)
                .padding()
            Button("Submit"){
                presentAlert = true
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .alert("Information", isPresented: $presentAlert, actions: {
        }, message: {
            Text("Your name is \(name) \n You were born in \(year)")
        })
        .padding()
    }
}

#Preview {
    ContentView()
}
