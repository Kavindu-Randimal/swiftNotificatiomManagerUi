//
//  NavigationVC.swift
//  ManageNotification
//
//  Created by sachithra wishwamal on 8/7/20.
//  Copyright © 2020 sachithra wishwamal. All rights reserved.
//

import SwiftUI

struct NavigationVC: View {
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: ContentView()) {
                Text("Show detail view")
            }
        }.navigationBarTitle("Manage Notification")
            .onAppear{
                print("Navigation view appears")
                
        }
    }
}

//struct NavigationVC_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationVC()
//    }
//}



