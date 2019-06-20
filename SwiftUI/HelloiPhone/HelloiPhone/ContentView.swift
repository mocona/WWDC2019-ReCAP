//
//  ContentView.swift
//  HelloiPhone
//
//  Created by Abraham Park on 6/20/19.
//  Copyright © 2019 Abraham Park. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var msgHello:String = ""
    @State var msgFinal:String = "Hello, You"
    
    var body: some View {
        //        HStack(alignment: .center , spacing: 20.0) {
        VStack {
            Spacer()
            Text(msgFinal)
            TextField($msgHello)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button(action: self.gazua) {
                Text("Gazua!")
            }
            Spacer()
            Spacer()
            Spacer()
        }
        
        //        }
    }
    
    
    func gazua() {
        if self.msgHello.count > 0 {
            self.msgFinal = "안녕, " + self.msgHello
        }
        else {
            self.msgFinal = "Hello, U"
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
