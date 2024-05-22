//  Buttons Challenge
//
//  Created by Ben Button
//  Copyright © 2023 MobileMakersEdu. All rights reserved.

import SwiftUI

struct ContentView: View {
    
    @State var changeBackground: Bool = true
    @State var counter: Int = 0
    @State var lightBulbStatus: String = "On"
    @State var showAlert = false
    
    var body: some View {
        VStack(spacing: 40) {
            
            Group {
                Divider()
                Text("Buttons Challenge")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.title)
                Divider()
            }
            
            //MARK: MVP
            HStack{
                Button("1"){
                    print("button #1 was pressed")
                }
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(.red)
                .position(x: 100, y: 10.0)
                
                Button("2"){
                    print("button #2 was pressed")
                }
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(.red)
                .position(x: 150, y: 10.0)
                
                
                
                
                
                //MARK: Stretch #1
                Button {
                    //Code
                } label: {
                    Text("Change Background")
                        .frame(width: 300, height: 60, alignment: .center)
                        .background(.blue)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .clipShape(Capsule())
                        .font(.title)
                        .position(x: -25, y: 150)
                    
                    
                    
                    
                }
                
            }
            
            
            
            
            
            //MARK: Stretch #2
            
            
            
            
            
            
            //MARK: Stretch #3
            Button(action: {showAlert = true}, label: {ZStack{
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 200
                           , height: 100, alignment: .center)
                    .shadow(color:.black, radius:10, x:0.0, y:0.0)
                Image (systemName:"key")
                    .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                    .frame(width: 50
                           , height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.green)
            }})
            .alert("Strech #3 Complete", isPresented: $showAlert)
            
            
            
            
            
            
            , actions: <#() -> _#>              //MARK: Stretch #4
            
            
            
            
            
            
            Group {
                
                Image("MobileMakersEduNB")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .scaledToFit()
                
                
                
                
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .background(changeBackground ? .white : .black)
        }
    }
    
}
