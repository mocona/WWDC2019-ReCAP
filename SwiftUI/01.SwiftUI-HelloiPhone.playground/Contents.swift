import SwiftUI
import PlaygroundSupport

//@state var msgHello:String = ""

struct HelloiPhone : View {
  
    @State var msgHello:String = ""
    @State var msgFinal:String = "Hello, You"
    
    var body: some View {
//        HStack(alignment: .center , spacing: 20.0) {
            VStack {
                Text(msgFinal)
                TextField($msgHello)
                    .textFieldStyle(.roundedBorder)
                Button(action: self.gazua) {
                    Text("Gazua!")
                }
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




let vc = UIHostingController(rootView: HelloiPhone())

PlaygroundPage.current.liveView = vc

