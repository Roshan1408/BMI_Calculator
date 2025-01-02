//
//  SecondViewController.swift
//  BMI_Calculator
//
//  Created by admin on 02/01/25.
//

import UIKit

class SecondViewController: UIViewController
{

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet var viewLabel: UIView!
    
    var bmiValue:String?
    var adviceLabeltext:String?
    var color:UIColor = .white
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        resultLabel.text=bmiValue
        adviceLabel.text=adviceLabeltext
        viewLabel.backgroundColor=color
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
