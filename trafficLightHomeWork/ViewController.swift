//
//  ViewController.swift
//  trafficLightHomeWork
//
//  Created by Максим Никитюк on 27.01.2021.
//

import UIKit

enum AdmissibleLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var admisibleLight = AdmissibleLight.red
    
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redView.layer.cornerRadius = 65
        yellowView.layer.cornerRadius = 65
        greenView.layer.cornerRadius = 65
        
        redView.alpha = lightOff
        yellowView.alpha = lightOff
        greenView.alpha = lightOff
    }

    @IBAction func startButtonPush() {
        
        startButton.setTitle("NEXT", for:.normal)
        
        switch admisibleLight{
        case .red:
            greenView.alpha = lightOff
            redView.alpha = lightOn
            admisibleLight = .yellow
        case .yellow:
            redView.alpha = lightOff
            yellowView.alpha = lightOn
            admisibleLight = .green
        case .green:
            greenView.alpha = lightOn
            yellowView.alpha = lightOff
            admisibleLight = .red
        }
        
        
    }
    
}

