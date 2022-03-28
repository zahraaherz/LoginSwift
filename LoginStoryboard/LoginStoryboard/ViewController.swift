//
//  ViewController.swift
//  LoginStoryboard
//
//  Created by Zahraa Herz on 28/03/2022.
//

import UIKit
 
class ViewController: UIViewController {
    

    @IBOutlet weak var emailF: UITextField!
    
    @IBOutlet weak var PassF: UITextField!
    
    @IBOutlet weak var LoginButton: UIButton!
    
    @IBOutlet weak var PasswordValidate: UILabel!
    
    
    
    public func validatePassword(password: String ) -> Bool {
       // let password = String(password1.text!)

       //Minimum 8 characters at least 1 Alphabet and 1 Number:
       let passRegEx = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
       let trimmedString = password.trimmingCharacters(in: .whitespaces)
       let validatePassord = NSPredicate(format:"SELF MATCHES %@", passRegEx)
       let isvalidatePass = validatePassord.evaluate(with: trimmedString)
       return isvalidatePass
    }
    
    public func validateEmailId(emailID1: UITextField) -> Bool {
        let emailID = String(emailID1.text!)
       let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
       let trimmedString = emailID.trimmingCharacters(in: .whitespaces)
       let validateEmail = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
       let isValidateEmail = validateEmail.evaluate(with: trimmedString)
       return isValidateEmail
    }
    
    
    @IBAction func sButton(_ sender: Any) {
        
        let P = validatePassword(password: PassF.text!)
        let E = validateEmailId(emailID1: emailF)
        if ( P == false && E == false) {
            // create the alert
            let alert = UIAlertController(title: "Error", message: "Incorect Email and Password", preferredStyle: UIAlertController.Style.alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
           return
        }
        
        if ( P == true && E == false) {
            // create the alert
            let alert = UIAlertController(title: "Error", message: "Incorect Email ", preferredStyle: UIAlertController.Style.alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
           return
        }
        
        if ( P == false && E == true) {
            // create the alert
            let alert = UIAlertController(title: "Error", message: "Incorect Password", preferredStyle: UIAlertController.Style.alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
           return
        }
        
        if ( P == true && E == true) {
            // create the alert
            let alert = UIAlertController(title: "Succed", message: "Sucssefully Login", preferredStyle: UIAlertController.Style.alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
           return
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    
}

