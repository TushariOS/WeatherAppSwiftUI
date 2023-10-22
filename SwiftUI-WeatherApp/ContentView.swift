//
//  ContentView.swift
//  SwiftUI-WeatherApp
//
//  Created by Tushar Jaunjalkar on 18/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: -10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("79°")
                        .font(.system(size: 60, weight:  .medium))
                        .foregroundColor(.white)
                }
                
                Spacer()
                HStack(spacing: 10) {
                    WeatherView(weekfoDay: "Mon",
                                imageName: "cloud.snow.fill",
                                temp: 56)
                    WeatherView(weekfoDay: "Tue",
                                imageName: "cloud.sun.fill",
                                temp: 59)
                    WeatherView(weekfoDay: "Wed",
                                imageName: "sun.dust.fill",
                                temp: 49)
                    WeatherView(weekfoDay: "Thu",
                                imageName:
                                    "cloud.fill",
                                temp: 63)
                    WeatherView(weekfoDay: "FRI",
                                imageName: "cloud.circle.fill",
                                temp: 80)
                    WeatherView(weekfoDay: "SAT",
                                imageName: "cloud.heavyrain.fill",
                                temp: 67)
                    WeatherView(weekfoDay: "SUN",
                                imageName: "cloud.hail.fill",
                                temp: 81)
                }
                Spacer()
                Button {
                    print("Button Action")
                } label: {
                    Text("Change Day TIme")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherView: View {
    var weekfoDay: String
    var imageName: String
    var temp: Int
    
    var body: some View {
        VStack {
            Text(weekfoDay)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temp)°")
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}
