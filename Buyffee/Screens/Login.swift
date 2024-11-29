//
//  Login.swift
//  Buyffee
//
//  Created by Prakhar Saxena on 29/11/24.
//

import SwiftUI

// Custom TextField style with black placeholder
struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(15)
            .background(Color.white.opacity(0.5))
            .cornerRadius(15)
            .padding(.horizontal, 30)
            .shadow(color: .white, radius: 2.5)
            .foregroundColor(.black) // Color for typed text
            .accentColor(.red) // Color for the cursor
    }
}

struct Login: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            // Background Color
            LinearGradient(colors: [.yellow, .black], startPoint: .topTrailing, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack(spacing: 30) {
                
                VStack {
                    // Login Heading Text
                    Text("Login")
                        .foregroundStyle(.white)
                        .font(.system(size: 45)).bold()
                        
                    Text("It's easier to Login now")
                        .font(.headline)
                        .foregroundStyle(.white)
                }
                
                Button {
                    // action will be here
                } label: {
                    HStack {
                        Image("GoogleLogo")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .padding(.leading, 16)
                        Text("Continue with Google")
                            .padding(16)
                    }
                    .foregroundColor(.black)
                    .font(.system(size: 16, weight: .semibold))
                    .frame(minHeight: 52)
                    .background(.white)
                    .cornerRadius(50)
                }
                
                Text("OR").bold()
                    .foregroundColor(.white)
                    .underline()
                
                VStack(spacing: 20) {
                    TextField("Email", text: $email)
                        .textFieldStyle(OvalTextFieldStyle())
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray)
                                .padding(.horizontal, 30)
                        )
                        .foregroundColor(.black) // Placeholder color (directly on TextField)
                    
                    TextField("Password", text: $password)
                        .textFieldStyle(OvalTextFieldStyle())
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray)
                                .padding(.horizontal, 30)
                        )
                        .foregroundColor(.black) // Placeholder color (directly on TextField)
                    
                    Button {
                        // action will be here
                    } label: {
                        HStack {
                            Text("Login")
                                .padding(.horizontal, 30)
                        }
                        .foregroundColor(.black)
                        .font(.system(size: 16, weight: .semibold))
                        .frame(minHeight: 52)
                        .background(.white)
                        .cornerRadius(50)
                    }
                }
                
                Button {
                    // Go to Signup Page
                } label : {
                    HStack {
                        Text("Don't have an account? Sign up")
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

#Preview {
    Login()
}
