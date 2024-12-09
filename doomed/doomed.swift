//
//  doomed.swift
//  doomed
//
//  Created by Anthony Li on 12/7/24.
//

import SwiftUI

@main
struct doomed: App {
    struct doomed: View {
        @AppStorage("doomed") var doomed = 0
        
        var body: some View {
            VStack {
                Text("\(doomed)")
                    .font(.system(size: 500))
                    .bold()
                    .minimumScaleFactor(0.01)
                    .contentTransition(.numericText())
                
                Spacer()
                
                Button {
                    doomed += 1
                } label: {
                    Text("doomed")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical)
                        .foregroundStyle(.black)
                }
                .buttonBorderShape(.roundedRectangle)
                .buttonStyle(.borderedProminent)
                
                Button("nvm") {
                    doomed -= 1
                }
            }
            .padding()
            .sensoryFeedback(.increase, trigger: doomed)
            .animation(.default, value: doomed)
        }
    }
    
    var body: some Scene {
        WindowGroup {
            doomed()
        }
    }
}

#Preview("doomed") {
    doomed.doomed()
}
