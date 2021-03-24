//
//  ViewController.swift
//  HomeWork 2.1 Task 2
//
//  Created by Red Beard on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {
    enum signalOfTrafficLight {
        case red
        case yellow
        case green
        case dontWork
    }

    @IBOutlet weak var redSignal: UIView!
    @IBOutlet weak var yellowSignal: UIView!
    @IBOutlet weak var greenSignal: UIView!
    @IBOutlet weak var buttonStart: UIButton!
    
    private var currentSignal = signalOfTrafficLight.dontWork
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonStart.layer.cornerRadius = 10
        redSignal.layer.cornerRadius = redSignal.frame.height * 0.75
        yellowSignal.layer.cornerRadius = yellowSignal.frame.height * 0.75
        greenSignal.layer.cornerRadius = greenSignal.frame.height * 0.75
    }

    @IBAction func buttonPressed(_ sender: Any) {
        switch self.currentSignal {
        case .red:
            self.redSignal.alpha = 0.3
            self.yellowSignal.alpha = 1
            self.currentSignal = .yellow
        case .yellow:
            self.yellowSignal.alpha = 0.3
            self.greenSignal.alpha = 1
            self.currentSignal = .green
        case .green:
            self.greenSignal.alpha = 0.3
            self.redSignal.alpha = 1
            self.currentSignal = .red
        case .dontWork:
            self.buttonStart.setTitle("Next", for: .normal)
            self.redSignal.alpha = 1
            self.currentSignal = .red
        }
    }
}

