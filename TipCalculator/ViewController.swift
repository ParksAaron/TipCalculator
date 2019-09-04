//
//  ViewController.swift
//  TipCalculator
//
//  Created by Aaron Parks on 8/26/19.
//  Copyright © 2019 Aaron Parks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var percentControl: UISegmentedControl!
    @IBOutlet weak var inputField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        inputField.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercent = [0.15, 0.20]
        let bill = Double(inputField.text!) ?? 0
        let tip = (bill * tipPercent[percentControl.selectedSegmentIndex])
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    

}

