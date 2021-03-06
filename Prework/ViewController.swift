//
//  ViewController.swift
//  Prework
//
//  Created by Phat Le on 1/19/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //set title in the navigation bar
        self.title = "Tip Calculator"
    }

    
    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get Total tip by mult tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.20]
        let tip = bill *
            tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
}

