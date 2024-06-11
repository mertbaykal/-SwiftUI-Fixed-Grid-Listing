# -SwiftUI-Fixed-Grid-Listing
This repository contains a SwiftUI project demonstrating the implementation of a horizontal scrollable fixed grid layout using LazyVGrid. The project includes examples of grid items with icons and labels, and interactive gestures for user interaction.


## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Components](#components)
- [Contributing](#contributing)
- [License](#license)

---

## Installation
To clone and run this project locally, follow these steps:

1. **Clone the repository:**
   ```sh
   git clone https://github.com/username/SabitGridListeleme.git
   ```

2. **Navigate to the project directory:**
   ```sh
   cd SabitGridListeleme
   ```

3. **Open the project in Xcode:**
   ```sh
   open SabitGridListeleme.xcodeproj
   ```

4. **Run the project:**
   In Xcode, select the target device and click the 'Run' button.

---

## Usage
The project demonstrates how to use `LazyVGrid` in SwiftUI to create a horizontally scrollable fixed grid layout. Below are the key components and their usage.

---

## Components

### SabitGridListeleme
`SabitGridListeleme` is the main view containing a horizontally scrollable `LazyVGrid` with four columns. Each grid item displays an icon and a label.

```swift
struct SabitGridListeleme: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyVGrid(columns: [
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible())
            ], spacing: 20) {
                SabitGridItem(text: "Sun", image: "sun.min")
                    .onTapGesture {
                        print("sun")
                    }
                SabitGridItem(text: "Moon", image: "moon")
                    .onTapGesture {
                        print("moon")
                    }
                SabitGridItem(text: "Star", image: "star")
                    .onTapGesture {
                        print("star")
                    }
                SabitGridItem(text: "Cloud", image: "cloud")
            }
        }.padding(10)
    }
}
```

### SabitGridItem
`SabitGridItem` is a reusable component for creating grid items. Each item contains an icon and a label.

```swift
struct SabitGridItem: View {
    var text: String
    var image: String
    var body: some View {
        VStack {
            Image(systemName: image)
            Text(text)
        }.frame(width: 100, height: 100)
            .border(.gray)
    }
}

#Preview {
    SabitGridListeleme()
}
```

---

## Contributing
If you would like to contribute to this project, please create a pull request or open an issue. We welcome all feedback and contributions!

---

## License
This project is licensed under the MIT License. For more information, please see the `LICENSE` file.

