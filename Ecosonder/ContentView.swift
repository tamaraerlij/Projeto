//
//  ContentView.swift
//  Ecosonder
//
//  Created by Tamara Erlij on 03/10/19.
//  Copyright © 2019 Tamara Erlij. All rights reserved.

import SwiftUI

struct Categoria: Identifiable {
        let id: Int
        let title : String
        let color : Color

    let categorias : [Categoria] = [
        .init(id: 0, title: "Energia", color: .yellow),
        .init(id: 1, title: "Moda", color: .pink),
        .init(id: 2, title: "Alimentos e bebidas", color: .green)
    ]
}


struct Evento: Identifiable {
    let id: Int
    let name, imageName: String
    
    static let eventos: [Evento] = [
        .init(id: 1, name: "Primeiro evento!", imageName: "evento"),
        .init(id: 2, name: "Segundo evento!", imageName: "evento"),
    ]
}


struct ContentView : View {

    let categorias = [Categoria].self
    
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
               VStack (alignment: .leading) {
                      Text("Eventos principais")
                ScrollView {
                    VStack(alignment: .leading) {
                    HStack {
                        NavigationLink(destination: EventoDetailView()) {
            EventoView()
                        }
                            EventoView()
                             EventoView()
                             EventoView()
                    }
                    }
                }.frame(height: 200)
                }
                Text("Categorias")
                VStack {
                        CategoriaView()
                        Categoria2View()
                        CategoriaView()
                        CategoriaView()
                    
//
//              CategoriaView.init(categorias: Categoria.init(id: 1, title: "Moda", color: .pink))
                              
                    }
            }
                
 
            } .navigationBarTitle(Text("Eventos"))
        }
 
        }
    
struct EventoView : View {
    var body : some View {
        VStack (alignment: .leading) {
            Image("evento").renderingMode(.original).resizable()
            Text("Evento 1").lineLimit(nil).padding(.leading, 0)
        }.frame(width: 110, height: 170)
    }
    }

struct CategoriaView: View {
 //  let categorias : Categoria
    
    var body: some View {
          ZStack() {
            Rectangle()
                        .fill(Color.yellow)
                        .cornerRadius(10)
                        .frame(width: 350, height: 50)
            
                    Text("Energia")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                }.shadow(radius: 6)
            }
        }

struct Categoria2View: View {
//  let categorias : Categoria
   
   var body: some View {

         ZStack() {
           Rectangle()
                       .fill(Color.pink)
                       .cornerRadius(10)
                       .frame(width: 350, height: 50)
           
                   Text("Moda")
                       .font(.largeTitle)
                       .bold()
                       .foregroundColor(.white)
               }.shadow(radius: 6)
           }
       }




struct EventoDetailView : View {
    var body : some View {
        Text("oiiii")
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
                .frame(width: 350, height: 300)
            
            Text(title)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }.shadow(radius: 6)
    }
}

//
//struct CategoriasView : View {
//
//    let title : String
//    let color : Color
//
//    var body: some View {
//        ZStack {
//            Rectangle()
//                .fill(color)
//                .cornerRadius(10)
//                .frame(width: 400, height: 50)
//
//            Text(title)
//                .font(.largeTitle)
//                .bold()
//                .foregroundColor(.white)
//        }.shadow(radius: 6)
//    }
//}





#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

