//
//  ViewController.swift
//  homework2.1.2
//
//  Created by Admin on 30.01.2021.
//

import UIKit

enum CurrentColor {
    case red, yellow, green
}

class ViewController: UIViewController {
    @IBOutlet var RedTraficLight: UIView!
    @IBOutlet var YellowTraficLight: UIView!
    @IBOutlet var GreenTraficLight: UIView!
    
    @IBOutlet var SwitchingTraficLightButton: UIButton!
    private var currentColor = CurrentColor.red
    private let lightIsOff: CGFloat = 0.3
    private let lightIsOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
            SwitchingTraficLightButton.layer.cornerRadius = 20
        RedTraficLight.alpha = lightIsOff
        YellowTraficLight.alpha = lightIsOff
        GreenTraficLight.alpha = lightIsOff
    }
    
    override func viewWillLayoutSubviews() {
        RedTraficLight.layer.cornerRadius = RedTraficLight.frame.width / 2
        YellowTraficLight.layer.cornerRadius = YellowTraficLight.frame.width / 2
        GreenTraficLight.layer.cornerRadius = GreenTraficLight.frame.width / 2
    }
    
    @IBAction func SwithcingTraficLightPressed(_ sender: Any) {
    
        switch currentColor{
        case .red:
            SwitchingTraficLightButton.setTitle("Next", for: .normal)
            GreenTraficLight.alpha = lightIsOff
            RedTraficLight.alpha = lightIsOn
            currentColor = .yellow
         
        case .yellow:
            RedTraficLight.alpha = lightIsOff
            YellowTraficLight.alpha = lightIsOn
            currentColor = .green
            
        case .green:
            YellowTraficLight.alpha = lightIsOff
            GreenTraficLight.alpha = lightIsOn
            currentColor = .red
        }
  
        
    
        }
        
        
        
}

        
    
    



