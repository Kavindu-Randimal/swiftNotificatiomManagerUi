//
//  ContentView.swift
//  ManageNotification
//
//  Created by sachithra wishwamal on 8/3/20.
//  Copyright © 2020 sachithra wishwamal. All rights reserved.
//

import SwiftUI

extension Color{
    static let offWhite = Color(red: 225/255, green: 225/255, blue: 235/255)
    static let deviceWidth = UIScreen.main.bounds.size.width
    static let deviecHeight = UIScreen.main.bounds.size.height
}

struct ContentView: View {
    @State var isCehcekd = false
    @State var isNotCehcekd = true
    var body: some View {
        VStack{
            ScrollView{
                ZStack{
                    Group{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .shadow(color: Color.offWhite, radius: 10, x: 10, y: 10)
                                                        .frame(width: Color.deviceWidth - 10 , height: 100)
                        VStack(alignment: .leading){
                            Toggle(isOn: $isCehcekd, label:{Text("Account".uppercased()).font(.none)})
                            Divider()
                            Text("Profile update alert").font(.system(size: 12))
                        }.padding()
                    }
                }
                ZStack{
                    Group{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .shadow(color: Color.offWhite, radius: 10, x: 10, y: 10)
                      .frame(width: Color.deviceWidth - 10 , height: 100)
                        VStack(alignment: .leading){
                            Toggle(isOn: $isNotCehcekd, label:{Text("documents".uppercased()).font(.none)})
                            Divider()
                            Text("Activity status, Document avilability").font(.system(size: 12))
                        }.padding()
                    }
                }
                ZStack{
                    Group{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .shadow(color: Color.offWhite, radius: 10, x: 10, y: 10)
                       .frame(width: Color.deviceWidth - 10 , height: 100)
                        VStack(alignment: .leading){
                            Toggle(isOn: $isCehcekd, label:{Text("manage permission".uppercased()).font(.none)})
                            Divider()
                            Text("Token permission alert").font(.system(size: 12))
                        }.padding()
                    }
                }
                ZStack{
                    Group{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .shadow(color: Color.offWhite, radius: 10, x: 10, y: 10)
                  .frame(width: Color.deviceWidth - 10 , height: 100)
                        VStack(alignment: .leading){
                            Toggle(isOn: $isNotCehcekd, label:{Text("subscription".uppercased()).font(.none)})
                            Divider()
                            Text("Available local licenses, expireation alerts ").font(.system(size: 12))
                        }.padding()
                    }
                }
            }
        }
        .navigationBarTitle("Manage Notification")
            //                .navigationBarItems(
            //                    leading:
            //                    Button("Subtract 1") {
            //                        print("leading")
            //                    }
            //                Button(action: {
            //                  print("button pressed")
            //                }) {
            //                    Image("marker")
            //                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
            //                }
            
            //                trailing:
            //                    Button("Add 1") {
            //                        print("trailing")
            //                    }
            //            )
            .onAppear{
                print("View appears")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

