//
//  ActivtyPage1.swift
//  jadwalla
//
//  Created by SHATHA on 27/03/1445 AH.
//

import SwiftUI

//
//  ContentView.swift
//  hiking
//
//  Created by Nora Aldossary on 23/03/1445 AH.
//

import SwiftUI

struct ActivtyPage1: View {
    var body: some View {
        
        VStack (spacing:30) {
            
            nameOfActivity(activityName: "الكتابة", backgroundColor: Color(red: 0.752556622, green: 0.8379440308, blue: 0.4830396175),imageName: "write1")
                .position(x: 240, y: 60)
        
            nameOfActivity(activityName: "القراءة", backgroundColor: Color(red: 0.9319027662, green: 0.4949447513, blue: 0.4939362407), imageName: "read")
                .position(x: 240, y: 40)

            nameOfActivity(activityName: "الطبخ", backgroundColor: Color(red: 0.5169550776, green: 0.3952164948, blue: 0.8959768414), imageName: "food")
                .position(x: 240, y: 4)

            nameOfActivity(activityName: " الإبداع", backgroundColor: Color(red: 0.99427706, green: 0.8085995317, blue: 0.3925306201), imageName: "creativ")
                .position(x: 240, y: -20)
        
        }.position(x:160,y:420)
        .padding()
        
    }
}

#Preview {
    ActivtyPage1()
}

struct nameOfActivity: View {
    var activityName: String
    var backgroundColor: Color
    var imageName: String

    var body: some View {
        ZStack {
            backgroundColor // تحديد لون الخلفية هنا
                .frame(width: 336.0, height: 114.0)
                .cornerRadius(19)
                .shadow(radius: 10)

            Button(action: {}) {
                HStack(spacing: 40){
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 147, height: 147)
                        .position(CGPoint(x: 70, y: 60))

                    Text(activityName)
                        .font(.title2)
                        .foregroundColor(.white)
                        .position(x: 50, y: 60)
                }.frame(width: 336.0, height: 114.0)

            }
        } .offset(CGSize(width: 40, height: 10.0))
        
    }
}
