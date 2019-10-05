//
//  ContentView.swift
//  Ecosonder
//
//  Created by Tamara Erlij on 03/10/19.
//  Copyright © 2019 Tamara Erlij. All rights reserved.

import SwiftUI

struct ContentView : View {
    
  let categorias = ["1", "2", "3", "4", "5"]
    
 @State var expanded: Bool = false
 
    var body: some View {

//    ZStack {
//            CardView(title: "Evento sobre sustentabilidade", color: .green)
//                .offset(x: 0, y: expanded ? -400 : -40)
//                .scaleEffect(expanded ? 1 : 0.90)
//            CardView(title: "Venham", color: .purple)
//                .offset(x: 50, y: expanded ? -400 : -40)
//                .scaleEffect(expanded ? 1 : 0.95)
//            CardView(title: "Ecosonder", color: .black)
//                .onTapGesture {
//                    self.expanded.toggle()
//            }
//           .offset(x: 100, y: 80)
//            .animation(.spring())
         //   Spacer()
          NavigationView {
            List {
                
                ScrollView {
                    VStack (alignment: .leading) {
                        Text("Eventos principais")
                    HStack {
                          Text("Evento 1")
                          Text("Evento 2")
                          Text("Evento 3")
                          Text("Evento 4")
                          Text("Evento 5")
                          Text("Evento 6")
                          Text("Evento 7")
                          Text("Evento 8")
                          Text("Evento 9")
                    }
                    }
                }.frame(height: 150)
                ForEach(categorias,  id: \.self) { categoria in
                        Text(categoria)

                }
//                CategoriasView(title: "Energia", color: .yellow)
//                CategoriasView(title: "Moda", color: .pink)
            } .navigationBarTitle(Text("Grupos"))
        }
 
        }
    }
//}


struct CardView : View {
    
    let title : String
    let color : Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(color)
                .cornerRadius(10)
                .frame(width: 350, height: 300)
            
            Text(title)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }.shadow(radius: 6)
    }
}


struct CategoriasView : View {
    
    let title : String
    let color : Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(color)
                .cornerRadius(10)
                .frame(width: 400, height: 50)
            
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

//
//CategoriasView(title: "Energia", color: .yellow)
//CategoriasView(title: "Moda", color: .pink)
