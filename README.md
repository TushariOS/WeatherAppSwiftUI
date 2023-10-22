# WeatherAppSwiftUI
## Button

A `Button` in SwiftUI is used to create interactive elements that respond to user taps. You can customize the appearance and actions associated with a button.
Example:
Button("Tap Me") {
    // Action to perform when the button is tapped
}

## Image
The Image view is used to display images in SwiftUI. You can load images from your app's assets, system symbols, or network resources.
Example:
Image("imageName") // Load an image from your asset catalog
Image(systemName: "star.fill") // Use a system symbol

## HStack and VStack
HStack and VStack are used to arrange views horizontally and vertically, respectively. They are the building blocks for creating flexible layouts in SwiftUI.
Example:
HStack {
    Text("Left")
    Text("Right")
}

VStack {
    Text("Top")
    Text("Bottom")
}

## Text
The Text view displays text in your SwiftUI app. You can customize the font, color, and other text attributes.
Example:

Text("Hello, World!")
    .font(.title)
    .foregroundColor(.blue)