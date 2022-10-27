//
//  ViewController.swift
//  calc
//
//  Created by Émerson M Luz on 25/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var btSubtract: UIButton!
    @IBOutlet weak var btSum: UIButton!
    @IBOutlet weak var btMultiplique: UIButton!
    @IBOutlet weak var btDivisor: UIButton!
    @IBOutlet weak var btPow: UIButton!
    @IBOutlet weak var btPercentage: UIButton!
    @IBOutlet weak var btPoint: UIButton!
    
    var operador: String = ""
    var value1: Float = 0
    var value2: Float = 0
    var calcValues: Float = 0
    var equalsPress: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func pressZero(_ sender: Any) {
        numbers(number: 0)
    }
    
    
    @IBAction func pressOne(_ sender: Any) {
        numbers(number: 1)
    }
    
    
    @IBAction func pressTwo(_ sender: Any) {
        numbers(number: 2)
    }
    
    
    
    @IBAction func pressTree(_ sender: Any) {
        numbers(number: 3)
    }
    
    
    @IBAction func pressFour(_ sender: Any) {
        numbers(number: 4)
    }
    
    
    @IBAction func pressFive(_ sender: Any) {
        numbers(number: 5)
    }
    
    
    @IBAction func pressSix(_ sender: Any) {
        numbers(number: 6)
    }
    
    
    @IBAction func pressSeven(_ sender: Any) {
        numbers(number: 7)
    }
    
    
    @IBAction func pressEight(_ sender: Any) {
        numbers(number: 8)
    }
    
    
    @IBAction func pressNine(_ sender: Any) {
        numbers(number: 9)
    }
    
    
    func numbers (number: Int) {
        
        var contLetters: Int = 0
        
        for _ in display.text ?? "" {
            contLetters += 1
        }
        
        guard contLetters <= 30 else {return}
        
        if equalsPress == true {
            display.text = "0"
            equalsPress = false
        }
        
        if display.text == "0" {
            display.text = ""
        }
        
        display.text = ("\(String(describing: display.text ?? "0"))" + String(number))
    }
    
    
    @IBAction func pressAC(_ sender: Any) {
        reset()
        opEnabled()
    }
    
    func reset () {
        value1 = 0.0
        value2 = 0.0
        display.text = "0"
        operador = ""
    }
    
    
    @IBAction func point(_ sender: Any) {
        if equalsPress == true {
            display.text = "0"
            equalsPress = false
        }
        
        var point: Bool = false
        
        for letter in display.text ?? "" {
            if letter == "." {
                point = true
            }
        }
        
        if point == false {
            display.text = ("\(String(describing: display.text ?? "0"))" + ".")
        }
        
    }
    
    func operandoValue (operador: String) {
        opDisabled()
        self.operador = operador
        value1 = Float(display.text ?? "0") ?? 0.0
        display.text = "0"
    }
    
    @IBAction func pressPow(_ sender: Any) {
        operandoValue(operador: "ˆ")
    }
    
    
    @IBAction func divisor(_ sender: Any) {
        operandoValue(operador: "/")
    }
    
    @IBAction func multiplique(_ sender: Any) {
        operandoValue(operador: "*")
    }
    
    @IBAction func subtract(_ sender: Any) {
        operandoValue(operador: "-")
    }
    
    
    @IBAction func sum(_ sender: Any) {
        operandoValue(operador: "+")
    }
    
    
    @IBAction func percentage(_ sender: Any) {
        operandoValue(operador: "%")
    }
    
    func opEnabled () {
        btSum.isEnabled = true
        btSubtract.isEnabled = true
        btMultiplique.isEnabled = true
        btDivisor.isEnabled = true
        btPow.isEnabled = true
        btPercentage.isEnabled = true
    }
    
    func opDisabled () {
        btSum.isEnabled = false
        btSubtract.isEnabled = false
        btMultiplique.isEnabled = false
        btDivisor.isEnabled = false
        btPow.isEnabled = false
        btPercentage.isEnabled = false
    }
    
    
    @IBAction func equal(_ sender: Any) {
        
        guard operador != "" else {return}
        
        equalsPress = true
        value2 = Float(display.text ?? "0") ?? 0.0
        
        switch operador {
            case "+":
                calcValues = value1 + value2
            case "-":
                calcValues = value1 - value2
            case "*":
                calcValues = value1 * value2
            case "/":
                calcValues = value1 / value2
            case "ˆ":
                calcValues = pow(value1, value2)
            case "%":
                calcValues = value1 * (value2 / 100)
        default:
            display.text = "ERROR"
        }
        
        let calculate: Float = calcValues
        
        reset()
        
        display.text = String(calculate)
        
        opEnabled()
    }
    
}

