//
//  ViewController.swift
//  ControlandoTeclado
//
//  Created by Iuri Menin on 02/08/16.
//  Copyright © 2016 Iuri Menin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var responseLabel: UILabel!

    @IBAction func buttonPressed(sender: UIButton) {
        responseLabel.text = textField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

