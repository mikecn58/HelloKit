//
//  ContentView.swift
//  HelloWorld
//
//  Created by Mike Huang on 2020/6/28.
//  Copyright © 2020 mike huang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            Text("First View")
                .font(.title)
                .tabItem {
                    HStack {
                        Image("first")
                        Text("First")
                    }
                }
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    HStack {
                        Image("second")
                        Text("Second")
                    }
                }
            .tag(1)
            Text("Third View")
            .font(.title)
            .tabItem {
                HStack {
                    Image("first")
                    Text("Third")
                }
            }
            .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
