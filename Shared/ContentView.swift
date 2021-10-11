//
//  ContentView.swift
//  Shared
//
//  Created by user204403 on 10/9/21.
//

import SwiftUI




struct ContentView: View {
    @AppStorage("status") var logged: Bool = false
    
    var body: some View {
        NavigationView{
            if logged{
                VStack{
                    Text("User Logged In")
                        .navigationTitle("Home")
                        .navigationBarHidden(false)
                        .preferredColorScheme(.dark)
                    Button(action:{
                        logged = false
                    }, label: {
                        Text("Logout")
                    })
                }
                
            }else{
                //
                LoginView()
                .preferredColorScheme(.light)
                .navigationBarHidden(true)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
