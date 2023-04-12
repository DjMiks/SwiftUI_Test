//
//  ContentView.swift
//  SwiftUI_Test
//
//  Created by Максим Ялынычев on 11.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var login: String = ""
    @State private var pass: String = ""
    
    var body: some View {
        
        TabView {
            Text("FeeD Tab")
                .tabItem {
                    Image(systemName: "house.fill")
                        Text("FeeD")
                }
            
            VStack(spacing: 100) {

                Image("logo_vk")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding(.top, -130)
                
                
                VStack(spacing: 0) {
                    
                    TextField("Email or phone", text: $login)
                        .padding()
                        .background(Color.init(.systemGray6))
                    
                    Divider()
                        .background(Color.gray)
                        .frame(minHeight: 1)
                        .overlay(Color.gray)
                    
                    TextField("Password", text: $pass)
                        .padding()
                        .background(Color.init(.systemGray6))
                }
                .overlay(RoundedRectangle(cornerRadius: 15) .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                
                Button("Log in") {
                    print("logined")
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
            }
            .padding(.init(top: 0, leading: 15, bottom: 0, trailing: 15))
            .tabItem {
                Image(systemName: "person.fill")
                    Text("Profile")
            }
            
            Text("Player Tab")
                .tabItem {
                    Image(systemName: "music.note")
                        Text("Player")
                }
            
            Text("Video Tab")
                .tabItem {
                    Image(systemName: "play.rectangle.fill")
                        Text("Video")
                }
            
            Text("Recorder tab")
                .tabItem {
                    Image(systemName: "mic.fill")
                        Text("Recorder")
                }
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
