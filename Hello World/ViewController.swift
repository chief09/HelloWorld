//
//  ViewController.swift
//  Hello World
//
//  Created by Cyberjaya 17 iTrain on 11/09/2017.
//  Copyright © 2017 Newera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ageText: UITextField!
    @IBOutlet var nameText: UITextField!
    @IBOutlet var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonPressed(_ sender: Any) {
        label1.text = "Hello \(self.nameText.text!). \n You are \(self.ageText.text!) years old."
        print("Hello \(self.nameText.text!).")
        print("You are \(self.ageText.text!) years old.")
    }
    

    @IBAction func buttonPressed2(_ sender: Any) {
        let text = "Hello \(self.nameText.text!). \n You are \(self.ageText.text!) years old."
        let alert = UIAlertController(title: "Hello World", message: "\(text)", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(ok)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)

    }
    
    @IBAction func buttonPressed3(_ sender: Any) {
        let text = "Hello \(self.nameText.text!). \n You are \(self.ageText.text!) years old."
        let actionSheet = UIAlertController(title: "Hello World", message: "\(text)", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        actionSheet.addAction(ok)
        actionSheet.addAction(cancel)
        present(actionSheet, animated: true, completion: nil)
        
    }
}

