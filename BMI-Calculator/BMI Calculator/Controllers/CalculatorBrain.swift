//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Palak Satti on 24/01/24.
// 
//

import Foundation
import UIKit
struct CalculatorBrain{
    var bmi : BMI?
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight/(height*height)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more Snacks!", color: UIColor.blue)
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle!", color: UIColor.systemGreen)
        } else{
            bmi = BMI(value: bmiValue, advice: "Eat less Snacks!", color: UIColor.systemPink)
        }
        
    }
    func getBMIValue() -> String{
        let formattedValue = String(format: "%.1f" , bmi?.value ?? 0.0)
        return formattedValue
        
    }
    func getAdvice() -> String{
        let givenAdvice = bmi?.advice ?? "No advice"
        return givenAdvice
    }
    func getColor() -> UIColor{
        let selectedColor = bmi?.color ?? UIColor.white
        return selectedColor
    }
    
}
