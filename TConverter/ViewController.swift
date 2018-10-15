//
//  ViewController.swift
//  TConverter
//
//  Created by Ringo_02 on 10/15/18.
//  Copyright © 2018 Ringo_02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider!{
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderValueChanged (_ sender: UISlider){
        let temperatureCelcius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelcius)ºC"
        
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
    }
    
}

