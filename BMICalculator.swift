//
//  BMICalculator.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Haven on 2022-03-19.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct BMICalculator {
    enum BMIRange : Int {
        case Low, Average, Dangerous
    }
    
    let bmi: Float
    
    init(height: Float, weight: Float) {
        self.bmi = weight / (height * height)
    }
    
    func getBMIRange() -> BMIRange {
        switch (bmi) {
        case 0.0...30.0:
            return BMIRange.Low
        case 30.0...60.0:
            return BMIRange.Average
        default:
            return BMIRange.Dangerous
        }
    }
}
