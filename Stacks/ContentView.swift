//
//  ContentView.swift
//  Stacks
//
//  Created by Zaafir on 4/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            CabezeraView()
            HStack {
                LuchadorView(luchador: "Goku", fuerza: "800/1000", trans: "Ultra instinto", colorTexto: .black, colorFondo: .purple)
                ZStack {
                    LuchadorView(luchador: "Vegeta", fuerza: "790/1000", trans: "Mega Instinto", colorTexto: .blue, colorFondo: .green)
                    Text("¡¡Lo ouedes entrenar!!")
                        .font(.system(.caption,design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .background(.blue)
                        .padding(5)
                        .offset(x: 0, y: -72)
                        .opacity(0.75)
                        
                }
            }.padding(.horizontal,7.0)
            HStack{
                ZStack{
                    LuchadorView(luchador: "Vegeto", fuerza: "900/1000", trans: "Ultra Super", colorTexto: .black, colorFondo: .purple)
                        .cornerRadius(10)
                        .padding(10)
                    Text("Goku y Vegeta Fusionado")
                        .font(.system(.caption,design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .background(.blue)
                        .padding(5)
                        .offset(x: 0, y: -72)
                        .opacity(0.75)
                    Image(systemName: "bolt.horizontal.fill")
                        .font(.system(size:50))
                        .foregroundColor(.black)
                        .offset(x: 0, y: 72)
                        
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

struct CabezeraView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2){
            Text("Elige")
                .font(.system(.largeTitle,design: .monospaced))
                .foregroundColor(.blue)
                .fontWeight(.black)
            Text("Luchador")
                .font(.system(.largeTitle,design: .monospaced))
                .foregroundColor(.blue)
                .fontWeight(.black)
            
        }
    }
}

struct LuchadorView: View {
    
    var luchador : String
    var fuerza : String
    var trans : String
    var colorTexto : Color
    var colorFondo : Color
    
    var body: some View {
        VStack{
            
            Text(luchador)
                .font(.system(.title,design: .rounded))
                .fontWeight(.black)
                .foregroundColor(colorTexto)
            Text(fuerza)
                .font(.system(size: 15, weight: .heavy, design: .rounded))
                .foregroundColor(colorTexto)
            Text(trans)
                .font(.headline)
                .foregroundColor(.gray)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: 150)
         .padding(40)
         .background(colorFondo)
         .cornerRadius(10)
         .opacity(0.75)
    }
}
