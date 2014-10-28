
//
//  ViewController.swift
//  Postcard
//
//  Created by Trevor Griffin on 10/3/14.
//  Copyright (c) 2014 TREVOR E GRIFFIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageButton.setTitle("Message Sent", forState: UIControlState.Normal)
    }

}

