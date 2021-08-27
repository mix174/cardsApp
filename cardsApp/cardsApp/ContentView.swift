//
//  ContentView.swift
//  cardsApp
//
//  Created by Mix174 on 27.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card3"
    @State private var computerCard = "card7"
    @State private var playerScore = 0
    @State private var computerScore = 0
    
    var body: some View {
        
        ZStack() {
            Image("background").ignoresSafeArea()
            VStack() {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack() {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(computerCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    
                    let playerRandom = Int.random(in: 2...14)
                    let computerRandom = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRandom)
                    computerCard = "card" + String(computerRandom)
                    
                    if playerRandom > computerRandom {
                        playerScore += 1
                    } else if playerRandom < computerRandom {
                        computerScore += 1
                    } else {
                        playerScore += 1
                        computerScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                HStack() {
                    Spacer()
                    VStack() {
                        let  a = Text("Player")
                            .padding(20)
                            .font(.headline)
                            .foregroundColor(.red)
                        a
                        Text(String(playerScore))
                            .padding(20)
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    
                    VStack() {
                        Text("Computer")
                            .padding(20)
                            .font(.headline)
                            .foregroundColor(.red)
                        Text(String(computerScore))
                            .padding(20)
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                Spacer()
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
