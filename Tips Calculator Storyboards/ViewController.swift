//
//  ViewController.swift
//  Tips Calculator Storyboards
//
//  Created by Rogelio Lopez on 12/9/21.
//

import UIKit

class ViewController: UIViewController {

    var percentage: Float = 10
    
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var Total: UILabel!
    
   
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.endEditing(false)
        billAmount.becomeFirstResponder()
        changeButtonAppereance(button: firstButton)
    }
    
    @IBAction func EditingChanged(_ sender: UITextField) {
        print(billAmount.text ?? "string vslue")
        calculation()
    }
    
    @IBAction func firstButtonPressed(_ sender: UIButton) {
        changeButtonAppereance(button: firstButton)
        percentage = 10
        calculation()
    }
    
    @IBAction func secondButtonPressed(_ sender: UIButton) {
        changeButtonAppereance(button: secondButton)
        percentage = 15
        calculation()
    }
    
    @IBAction func thirdButtonPressed(_ sender: UIButton) {
        changeButtonAppereance(button: thirdButton)
        percentage = 20
        calculation()
    }
    
    
    func calculation(){
        if let totalValue = Float(billAmount.text!) {
            let tipValue = totalValue *  10 / 100
            tipAmount.text = String(format: "%.2f", totalValue * percentage / 100)
            Total.text = String(format:"%.2f" , totalValue + tipValue)
        } else {
            print("String does not contain Float")
        }
    }
    
    func changeButtonAppereance(button: UIButton){
        firstButton.backgroundColor = UIColor(named: "ButtonUnpressed")
        secondButton.backgroundColor = UIColor(named: "ButtonUnpressed")
        thirdButton.backgroundColor = UIColor(named: "ButtonUnpressed")
        button.backgroundColor = UIColor(named: "ButtonPressed")
    }
}

