//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Haven on 2022-03-19.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiCalculator: BMICalculator?
    
    @IBOutlet weak var buttonRecalculate: UIButton!
    @IBOutlet weak var labelAdvice: UILabel!
    @IBOutlet weak var labelBMI: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let bmiCalculator = bmiCalculator {
            labelBMI.text = String(format: "%0.2f", bmiCalculator.bmi)
            
            let bmiRange = bmiCalculator.getBMIRange()
            
            var backgroundColor = UIColor.white
            switch (bmiRange) {
            case BMICalculator.BMIRange.Low:
                backgroundColor = UIColor.yellow
            case BMICalculator.BMIRange.Average:
                backgroundColor = UIColor.green
            case BMICalculator.BMIRange.Dangerous:
                backgroundColor = UIColor.red
            }
            view.backgroundColor = backgroundColor
        } else {
            labelBMI.text = "No value"
        }
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true)
    }
}
