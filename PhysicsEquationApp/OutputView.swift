
import SwiftUI

struct OutputValueView: View {
    
    // MARK: Stored properties
    let value: Double?
    let suffix: String
    
    // MARK: Computed properties

    var output: String {
        
        if let value = value {
            // create a local String that is the formatted value
            let formattedValue = String(format: "%.1f", value)
            
            return "\(formattedValue) \(suffix)"
            
        } else {
            
            return "Cannot be calculated"
            
        }
    }
    
    
    var body: some View {
        Text(output)
            .font(.title3)
            .bold()
    }
}

struct OutputValueView_Previews: PreviewProvider {
    static var previews: some View {
        
      
    }
}
