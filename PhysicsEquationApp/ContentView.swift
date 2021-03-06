//
//  CircleView.swift
//  FiguresHelperFreeForm
//
//  Created by Russell Gordon on 2021-12-04.
//

import SwiftUI

struct ContentView: View {
    
    
    // MARK: Stored properties
    @State var providedMass = ""
    @State var providedAcceleration = ""
    // MARK: Computed properties
    
  
    
    var mass: Double?{
        
        guard let mass = Double(providedMass),
              mass > 0
        else {
            return nil
            
        }
        return mass
    }
    
    
    
    var acceleration: Double?{
        
        
        guard let acceleration = Double(providedAcceleration),
              acceleration > 0
        else {
            return nil
        }
        return acceleration
    }
    
    var fnet : Double?{
        guard let fnet = fnet
        else {
            nil
        }
        
        
        return mass * acceleration
    }
    
    
    var body: some View {
        ScrollView {
            
            
            // Input: Mass
            TextField("Mass",
                      text: $providedMass,
                      prompt: Text("Numeric value greater than 0"))
            
            
                .foregroundColor(mass == nil ? Color.blue :  Color.primary)
            
            
            SectionLabelView(text: "Acceleration")
            
            OutputValueView(value: fnet, suffix: "square units")
            
        }
        .navigationTitle("Fnet")
        .padding()
    }
    
}


struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
            
        }
    }
}

