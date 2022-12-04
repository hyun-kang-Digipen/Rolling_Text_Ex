//
//  ContentView.swift
//  RollingText
//
//  Created by 강현 on 2022/12/04.
//

import SwiftUI

struct ContentView: View {
    @State var value: Int = 111
    var body: some View {
        NavigationView{
            VStack{
                RollingTextView(font: .system(size: 55), weight: .black, value: $value)
                
                Button("Change Value"){
                    value = .random(in: 200...300)
                }
            }
            .padding()
            .navigationTitle("Rolling Counter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
