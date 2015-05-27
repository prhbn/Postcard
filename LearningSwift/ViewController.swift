//
//  ViewController.swift
//  LearningSwift
//
//  Created by Parthiban Mohanraj on 5/25/15.
//  Copyright (c) 2015 Parthiban Mohanraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.redColor()
        
        //Combine both the text fields and print the output in the UILabel
        var statement: String = "\(enterNameTextField.text) says \(enterMessageTextField.text)"
        
        
        //Blank the text field after the send button is pressed
        messageLabel.text = statement
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
    
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Sent Message", forState: UIControlState.Normal)
        
    }
    
    

}

