//
//  ViewController.swift
//  homework2.1.2
//
//  Created by Admin on 30.01.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var RedTraficLight: UIView!
    
    @IBOutlet var YellowTraficLight: UIView!
    @IBOutlet var GreenTraficLight: UIView!
    @IBOutlet var SwitchingTraficLightButton: UIButton!

       
    
    override func viewDidLoad() {
        super.viewDidLoad()
            SwitchingTraficLightButton.layer.cornerRadius = 20
            RedTraficLight.layer.cornerRadius = 70
            YellowTraficLight.layer.cornerRadius = 70
            GreenTraficLight.layer.cornerRadius = 70
            
        
    }
    @IBAction func SwithcingTraficLightPressed(_ sender: Any) {
        if (RedTraficLight.alpha < 1) && (YellowTraficLight.alpha < 1) && (GreenTraficLight.alpha < 1){
            RedTraficLight.alpha = 1
            SwitchingTraficLightButton.setTitle("Next", for: .normal)
        }
        else if (RedTraficLight.alpha == 1) && (GreenTraficLight.alpha < 1)  {
            RedTraficLight.alpha = 0.3
            YellowTraficLight.alpha = 1
            
        }
        else if (RedTraficLight.alpha < 1) && (YellowTraficLight.alpha == 1){
            YellowTraficLight.alpha = 0.3
            GreenTraficLight.alpha = 1
        }
        else if (GreenTraficLight.alpha == 1){
            SwitchingTraficLightButton.setTitle("Start", for: .normal)
            GreenTraficLight.alpha = 0.3
        }
        
          
//        
        }
        
        
        
}

        
    
    



