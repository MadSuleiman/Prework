//
//  ViewController.swift
//  Prework
//
//  Created by Ahmad Suleiman on 8/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var AmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var sliderSwitch: UISwitch!
    @IBOutlet weak var currencyPicker: UIPickerView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var partyStepper: UIStepper!
    @IBOutlet weak var partySize: UILabel!
    @IBOutlet weak var indCost: UILabel!
    @IBOutlet weak var individualCost: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip Amount Label
        AmountLabel.text = String(format:"$%.2f", bill)
        //Update Tip Amount Label
        tipAmountLabel.text = String(format:"+$%.2f", tip)
        //UPdate Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
        if(partyStepper.value>1){
            indCost.isHidden = false
            individualCost.isHidden = false
            individualCost.text = String(format: "$%.2f", (total/partyStepper.value))
        }else{
            indCost.isHidden = true
            individualCost.isHidden = true
        }
    }
    
    @IBAction func calcTipSlider(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get total tip by multiplying tip * tipPercentage
        let tip = bill * Double(slider.value)
        let total = bill + tip
        
        //Update Tip Amount Label
        AmountLabel.text = String(format:"$%.2f", bill)
        //Update Tip Amount Label
        tipAmountLabel.text = String(format:"+$%.2f", tip)
        //UPdate Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
        if(partyStepper.value>1){
            indCost.isHidden = false
            individualCost.isHidden = false
            individualCost.text = String(format: "$%.2f", (total/partyStepper.value))
        }else{
            indCost.isHidden = true
            individualCost.isHidden = true
        }
    }
    @IBAction func switchChanged(_ sender: Any) {
        if(sliderSwitch.isOn){
            tipControl.isHidden = true
            slider.isHidden = false
            lbl1.isHidden = false
            lbl2.isHidden = false
        }else{
            tipControl.isHidden = false
            slider.isHidden = true
            lbl1.isHidden = true
            lbl2.isHidden = true
        }
        
    }
    @IBAction func partySizeChange(_ sender: Any) {
        partySize.text = String(Int(partyStepper.value))
    }
    
}

