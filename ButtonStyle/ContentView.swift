//
//  ContentView.swift
//  ButtonStyle
//
//  Created by 董 亜飛 on 2023/01/12.
//

import SwiftUI

struct ContentView: View {
    @State private var isEnabled: Bool = true
    
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("isEnabled")
                    .padding()
                
                Toggle("", isOn: $isEnabled)
                    .labelsHidden()
            }
            
            Button("Rounded Button") {
                print("Pressed Rounded Button")
            }
            .buttonStyle(RoundedButtonStyle())
            .disabled(!isEnabled)
            
            Button("Bordered Rounded Button") {
                print("Pressed Borderd Rounded Button")
            }
            .buttonStyle(BorderedRoundedButtonStyle())
            .disabled(!isEnabled)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
