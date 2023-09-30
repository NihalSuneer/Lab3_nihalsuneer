//
//  ViewController.swift
//  Lab3_nihalsuneer
//
//  Created by user235383 on 9/27/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        successField.isHidden = true
        errorField.isHidden = true
        
        
    }
    
    @IBOutlet weak var firstNameField: UITextField!
    
    
    @IBOutlet weak var lastnameField: UITextField!
    
    
    @IBOutlet weak var countryField: UITextField!
    
    
    @IBOutlet weak var ageField: UITextField!
    
    
    @IBOutlet weak var resultField: UITextView!
    
    
    @IBOutlet weak var errorField: UILabel!
    
    
    @IBOutlet weak var successField: UILabel!

    
    @IBAction func addButton(_ sender: Any) {
        
        guard   let fName = firstNameField.text,

                let lName = lastnameField.text,

                let cName = countryField.text,

                let ageValue = ageField.text,

                            !fName.isEmpty, !lName.isEmpty, !cName.isEmpty, !ageValue.isEmpty,

                            let ageNum = Int(ageValue)

                       else {

                           errorField.isHidden = false

                           successField.isHidden = true

                           return

                       }

               let inputText = "Full Name: \(fName) \(lName)\nCountry: \(cName)\nAge: \(ageNum)\n\n"

               resultField.text += inputText
        
        // clear the textView field

                    firstNameField.text = ""

                    lastnameField.text = ""

                    countryField.text = ""

                    ageField.text = ""

               successField.isHidden = true

               errorField.isHidden = true
    }
    

    @IBAction func submitButton(_ sender: Any) {
        
        if resultField.text.isEmpty {

                  errorField.isHidden = false

                  successField.isHidden = true

              }

              else {

                  successField.isHidden = false

                  errorField.isHidden = true

              }
        
    }
    
    
    @IBAction func clearButton(_ sender: Any) {
        
        // clear the textView field

            firstNameField.text = ""

            lastnameField.text = ""

            countryField.text = ""

            ageField.text = ""

        resultField.text = ""
                successField.isHidden = true

                errorField.isHidden = true
        
    }
   
   
    
}

