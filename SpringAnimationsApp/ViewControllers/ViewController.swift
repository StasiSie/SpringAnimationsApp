//
//  ViewController.swift
//  SpringAnimationsApp
//
//  Created by Игорь Богданов on 23.05.2022.
//

import Spring
import Darwin

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var animationButton: UIButton!
    
    var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
    }

    @IBAction func startAnimation() {
        animationLabel.text = animation.description
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.delay = CGFloat(animation.delay)
        animationView.duration = CGFloat(animation.duration)
        animationView.force = CGFloat(animation.force)
        animationView.animate()
        
        animation = Animation.getAnimation()
        animationButton.setTitle("Next animation: \(animation.preset)", for: .normal)
    }
    
}

