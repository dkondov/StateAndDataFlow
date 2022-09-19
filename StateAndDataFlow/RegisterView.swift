//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by D KONDROV on 19.09.2022.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var name = ""
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        
        VStack {
            
            TextField("Enter your Name", text: $name)
                .multilineTextAlignment(.center)
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.cicle")
                    Text("OK")
                }
            }
        }
    }
    
    private func  registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
       }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
