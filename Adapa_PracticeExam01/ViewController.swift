//
//  ViewController.swift
//  Adapa_PracticeExam01
//
//  Created by {{partialupn}} on 10/2/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputHeightinFeet: UITextField!
    @IBOutlet weak var inputHeightinInches: UITextField!
    
    @IBOutlet weak var inputWeight: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var displayImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateButton(_ sender: Any) {
        var htinft = inputHeightinFeet.text!
        var htinInch = inputHeightinInches.text!
        var wgt = inputWeight.text!
        
        let htinftDouble = Double(htinft) ?? 0.0
        let htinInchDouble = Double(htinInch) ?? 0.0
        let wgtDouble = Double(wgt) ?? 0.0
        
        let htinlbs = (htinftDouble * 12) + htinInchDouble
        
        let bminum = 703 * (wgtDouble / (htinlbs * htinlbs))
        let bmi = String(format: "%.1f", bminum)


        
        if bminum < 18.6 {
            displayImage.image=UIImage(named: "underWeight")
            resultLabel.text = "Your Body Mass Index is \(bmi)\nThis is Considered Underweight.\nHealth Tip: Eat more protein and healthy fats"
        } else if bminum >= 18.6 && bminum <= 24.9 {
            displayImage.image=UIImage(named: "normal")
            resultLabel.text = "Your Body Mass Index is \(bmi)\nThis is Considered Normal.\nHealth Tip: Excellent! Maintain a balance lifestyle "
        } else if bminum >= 25 && bminum <= 29.9 {
            displayImage.image=UIImage(named: "overWeight")
            resultLabel.text = "Your Body Mass Index is \(bmi)\nThis is Considered Overweight.\nHealth Tip: Consider a balanced diet less and increase physical activity"
        } else{
            displayImage.image=UIImage(named: "obese")
            resultLabel.text = "Your Body Mass Index is \(bmi)\nThis is Considered Obese.\nHealth Tip: Consult a doctor for personalized advice"
        }
    }
    

}

