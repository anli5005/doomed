//
//  ContentView.swift
//  doomed
//
//  Created by Anthony Li on 12/7/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("doomed") var doomed = 0
    
    var body: some View {
        VStack {
            Text("\(doomed)")
                .font(.system(size: 500))
                .bold()
                .minimumScaleFactor(0.01)
            
            Spacer()
            
            Button {
                doomed += 1
            } label: {
                Text("doomed")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 24)
            }
            .buttonBorderShape(.roundedRectangle)
            .buttonStyle(.borderedProminent)
            
            Button("nvm") {
                doomed -= 1
            }
        }
        .padding()
        .sensoryFeedback(.increase, trigger: doomed)
    }
}

#Preview {
    ContentView()
}
