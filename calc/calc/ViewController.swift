//
//  ViewController.swift
//  calc
//
//  Created by Émerson M Luz on 25/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numbers: [UIButton]!
    
    @IBOutlet weak var lbVIsor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func pressZero(_ sender: Any) {
        lbVIsor.text = ("\(String(describing: lbVIsor.text!))" + "0")
    }
    
    
    @IBAction func pressOne(_ sender: Any) {
        lbVIsor.text = ("\(String(describing: lbVIsor.text!))" + "1")
    }
    
    
    @IBAction func pressTwo(_ sender: Any) {
        lbVIsor.text = ("\(String(describing: lbVIsor.text!))" + "2")
    }
    
    
    
    @IBAction func pressTree(_ sender: Any) {
        lbVIsor.text = ("\(String(describing: lbVIsor.text!))" + "3")
    }
    
    
    @IBAction func pressFour(_ sender: Any) {
        lbVIsor.text = ("\(String(describing: lbVIsor.text!))" + "4")
    }
    
    
    @IBAction func pressFive(_ sender: Any) {
        lbVIsor.text = ("\(String(describing: lbVIsor.text!))" + "5")
    }
    
    
    @IBAction func pressSix(_ sender: Any) {
        lbVIsor.text = ("\(String(describing: lbVIsor.text!))" + "6")
    }
    
    
    @IBAction func pressSeven(_ sender: Any) {
        lbVIsor.text = ("\(String(describing: lbVIsor.text!))" + "7")
    }
    
    
    @IBAction func pressEight(_ sender: Any) {
        lbVIsor.text = ("\(String(describing: lbVIsor.text!))" + "8")
    }
    
    
    @IBAction func pressNine(_ sender: Any) {
        lbVIsor.text = ("\(String(describing: lbVIsor.text!))" + "9")
    }
    
}

