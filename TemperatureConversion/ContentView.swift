//
//  ContentView.swift
//  TemperatureConversion
//
//  Created by Mac on 21/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var temperature: Double = 0.0
    @State private var isCelsius = true
    @State private var newTemperature: Double = 0.0
    @State private var buttonText = ""
    
    var body: some View {
        Form {
            Section("Temperature"){
                TextField("Enter temperature", value: $temperature, format: .number)
                    .font(.title)
            }
            
            Section(isCelsius ? "Celsius To Kelvin" : "Kelvin To Celsius"){
//                HStack {
                Button("\(!isCelsius ? "Celsius" : "Kelvin")") {
                        if isCelsius {
                            newTemperature = temperature + 273
                            buttonText = "Kelvin"
                            isCelsius = false
                        } else {
                            newTemperature = temperature - 273
                            buttonText = "Celsius"
                            isCelsius = true
                        }
                        
                        //                        isCelsius = false
                        
                    }
                    .padding()
                    .font(.title)
                    .background(.yellow)
                    .frame(width: 150, height: 150)
                    
                
            }
            //            .padding()
            Section("Result"){
            
                Text("\(round(newTemperature * 100) / 100) \(buttonText)")
                    .font(.title)
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
