//
//  Models.swift
//  SpringAnimationsApp
//
//  Created by Игорь Богданов on 23.05.2022.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(
            preset: DataManager.shared.animations.randomElement()?.rawValue ?? "slideRight",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...2),
            duration: Double.random(in: 1...2),
            delay: Double.random(in: 0.1...0.3)
        )
    }
}
