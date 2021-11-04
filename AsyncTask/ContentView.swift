//
//  ContentView.swift
//  AsyncTask
//
//  Created by ramil on 04.11.2021.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewModel = ContentViewModel()

    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear {
                Task {
                    do {
                        try await viewModel.fetch()
                    } catch {
                        print(error.localizedDescription)
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
