import SwiftUI

struct ContentView: View {
// variable declarations
@State private var name: String = ""
@State private var showGreeting: Bool = false
@State private var fontSize: Double = 10 // slider requires Double type

var body: some View {
    VStack(spacing: 20) {
    //Add image. Must make resizable for it to resize in space and appy height and width.
        Image("welcome")
            .resizable()
            .frame(width: 200, height: 200)

    //Add Text Field
        TextField("Enter your name", text: $name)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal)
            
    //Button code. Can be removed when Switch is in operation
        Button("Show Greeting") {
        // when pressed, reveal the greeting
        showGreeting = true
        }
        .padding(.vertical, 8)

            
    // Toggle (switch) bound to the same state
        Toggle("Show Greeting (switch)", isOn: $showGreeting)
        .padding(.horizontal)
            
    // Slider
        Text("Font Size: \(Int(fontSize))")
        Slider(value: $fontSize, in: 10...50, step: 1)
        .padding(.horizontal)


    // greeting label appears when showGreeting is true
        if showGreeting {
        Text("Hello, \(name.isEmpty ? "World" : name)!")
        .font(.system(size: CGFloat(fontSize)))
        .fontWeight(.bold)
        .padding()
        .border(Color.pink, width: 4)
        }

        Spacer()
               }

       .padding()
    }
}

#Preview {
    ContentView()
}
