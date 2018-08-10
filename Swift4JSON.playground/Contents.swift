//: Playground - noun: a place where people can play

import UIKit

let filePath = Bundle.main.path(forResource:"colors", ofType: "json")
let data = FileManager.default.contents(atPath: filePath!)

struct Color: Codable {
    let color: String
    let category: String
    let type: String
}

struct MyData: Codable {
    let colors: [Color]
}

let decoder = JSONDecoder()
let colors = try! decoder.decode(MyData.self, from: data!)

print("Colors:")
for color in colors.colors {
    print(color)
}
