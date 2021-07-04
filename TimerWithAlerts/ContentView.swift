//
//  ContentView.swift
//  TimerWithAlerts
//
//  Created by Rob Williams on 7/3/21.
//

import SwiftUI

struct TimeWarning : Identifiable {
    var id = "W1"
    var message = "H"
}

struct ContentView: View {
    @State var elapsedTime = 0
    @State var timeWarning:TimeWarning? = nil
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        Text("Elapsed Time: \(self.elapsedTime)")
            .padding()
            .onReceive(timer){ input in
                self.elapsedTime += 1
            }
            .alert(item: $timeWarning){ item in
                Alert(title: Text("Warning"), message: Text(item.message), dismissButton: .cancel())
            }
            
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
