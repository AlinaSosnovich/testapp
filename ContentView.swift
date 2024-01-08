//
//  ContentView.swift
//  TestApp
//
//  Created by Sergei  Sosnovich on 7.01.24.
//

import SwiftUI

struct ContentView: View {
    
    @State var changeScreen = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 50) {
                Image("Illustration")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300,height: 300)
                Text("Welcome")
                    .font(.system(size: 42, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                Text("It’s a pleasure to meet you.\n We are excited that you’re here\n so let’s get started!")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                Button() {
                    changeScreen = true
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 50)
                        Text("Get Started")
                            .foregroundColor(.white)
                            .bold()
                    }
                }.frame(width: 200 , height: 70)
                    .foregroundColor(.orange)
            }
            .navigationDestination(isPresented: $changeScreen) {
                Shop()
            }
        }
    }
}
#Preview {
    ContentView()
}
