//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var labelHeight: UILabel!
    
    @IBOutlet weak var sliderWeight: UISlider!
    @IBOutlet weak var labelWeight: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        labelHeight.text = String(format: "%.2f m", sender.value)
    }
    
    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        labelWeight.text = String(format: "%.0f Kg", sender.value)
    }
    
    @IBAction func buttonCalculatePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier:  "openResultView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openResultView" {
            let resultView = segue.destination as! ResultViewController
            
            resultView.bmiCalculator = BMICalculator(height: sliderHeight.value, weight: sliderWeight.value)
        }
    }
}

