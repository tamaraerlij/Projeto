//
//  ContentView.swift
//  Ecosonder
//
//  Created by Tamara Erlij on 03/10/19.
//  Copyright © 2019 Tamara Erlij. All rights reserved.

import SwiftUI

enum DragInfo {
    case inactive
    case active(translation: CGSize)
    
    var translation: CGSize {
        switch self{
        case .inactive:
            return .zero
        case .active(let t):
            return t
        }
    }
    var isActive: Bool {
    switch self {
    case .inactive: return false
    case .active: return true
}
    }
}
struct ContentView : View {
    @GestureState var dragInfo = DragInfo.inactive
 
    var body: some View {
        let gesture = DragGesture()
              .updating($dragInfo) { (value, dragInfo, _) in
                  dragInfo = .active(translation: value.translation)
              }

      return ZStack {
            CardView(title: "Evento sobre sustentabilidade", color: .green)
                .offset(x: 0, y: dragInfo.isActive ? -400 : -40)
                .scaleEffect(dragInfo.isActive ? 1 : 0.90)
            CardView(title: "Venham", color: .purple)
                .offset(x: 0, y: dragInfo.isActive ? -200 : -20)
                .scaleEffect(dragInfo.isActive ? 1 : 0.95)
            CardView(title: "Ecosonder", color: .black)
                 .offset(dragInfo.translation)
                 .gesture(gesture)
            }
            .offset(x: 0, y: 80)
            .animation(.spring())
    }
}

struct CardView : View {
    
    let title : String
    let color : Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(color)
                .cornerRadius(10)
                .frame(width: 320, height: 320)
            
            Text(title)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }.shadow(radius: 6)
    }
}






#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
