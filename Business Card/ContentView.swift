//
//  ContentView.swift
//  Business Card
//
//  Created by Ilya Kokorin on 27.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.97, green: 0.84, blue: 0.58)
                .ignoresSafeArea()
            VStack {
                Image("Oformil_vkid")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.teal, lineWidth: 5)
                    )
                    
                Text("Ilasha Dogoni")
                    .bold()
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.teal)
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.teal)
                Divider()
                
                
                InfoView(text: "+7 123 456 78 90", imageName: "phone.fill")
                InfoView(text: "Ilasha@dogoni.ru", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.teal)
        
            .overlay(
                HStack{
                    Image(systemName: imageName).foregroundColor(.white)
                    Text(text).foregroundColor(.white)
                })
            .padding(.all)
    }
}
