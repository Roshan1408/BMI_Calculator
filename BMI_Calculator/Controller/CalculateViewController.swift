//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by Roshan on 31/12/24.
//

import UIKit

class CalculateViewController: UIViewController
{

    @IBOutlet weak var weigtLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightUISliderOutlet: UISlider!
    @IBOutlet weak var heightUISliderOutlet: UISlider!
    
    var bmiValue: Float=0.0
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightUISlider(_ sender: UISlider)
    {
        let height=String(format: "%.1f", heightUISliderOutlet.value)
        heightLabel.text=height+"m"
        print(height)
    }
    
    @IBAction func weightUISlider(_ sender: UISlider)
    {
        let weight=String(format: "%.0f", weightUISliderOutlet.value)
        weigtLabel.text=weight+"kg"
        print(weight)
    }
    
    @IBAction func calculateButton(_ sender: UIButton)
    {
        let height=heightUISliderOutlet.value
        let weight=weightUISliderOutlet.value
        
        let bmi=weight/pow(height, 2)
        bmiValue=bmi
        print(bmi)
        
        performSegue(withIdentifier: "goToSecondPage", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="goToSecondPage"
        {
            let destinationVC=segue.destination as! SecondViewController
            destinationVC.bmiValue=String(format: "%.1f",bmiValue)
            
            if bmiValue < 18.5
            {
                destinationVC.adviceLabeltext = "YOU ARE UNDERWEIGHT,EAT SOME MORE SNACKS!!"
                destinationVC.color = .systemBlue
            }
            else if bmiValue > 18.5 && bmiValue < 24.9
            {
                destinationVC.adviceLabeltext = "YOU ARE FIT AND HEALTHY!!"
                destinationVC.color = .green
            }
            else if bmiValue > 24.9 && bmiValue < 39.9
            {
                destinationVC.adviceLabeltext = "YOU ARE OVERWEIGHT!!TRY SOME EXERCISES"
                destinationVC.color = .gray
            }
            else
            {
                destinationVC.adviceLabeltext = "YOU ARE OBESE(FAT)"
                destinationVC.color = .yellow
            }
        }
    }
}

