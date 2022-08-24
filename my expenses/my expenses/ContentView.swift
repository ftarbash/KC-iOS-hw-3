//
//  ContentView.swift
//  my expenses
//
//  Created by Fatma Alarbash on 24/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var opacity = 0.6
    var body: some View {
        ZStack{Color.indigo.opacity(opacity).ignoresSafeArea()
            VStack{
                Text("my expenses").font(.system(size: 40, weight: .semibold, design: .serif))
            
            ScrollView{
             ForEach (expensesArray)
            {  expensesArray in
                HStack{
                VStack{
                    Text("store: \(expensesArray.store)").font(.system(size: 20, weight: .semibold, design: .rounded))
            
                    Text("paid: \(expensesArray.paid)").font(.system(size: 20, weight: .semibold, design: .rounded))
                    
                    Text("purchase: \(expensesArray.purchases[0])").font(.system(size: 20, weight: .semibold, design: .rounded))
                    
                    Text("\(expensesArray.purchases[1])").font(.system(size: 20, weight: .semibold, design: .rounded))
                    
                    Text("\(expensesArray.purchases[2])").font(.system(size: 20, weight: .semibold, design: .rounded))
            
                }.padding()
                }.frame(width: 350, height: 150).background(.gray.opacity(0.6)).cornerRadius(15)
               
            }
        }
                Slider(value:$opacity, in: 0...1).padding()
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
