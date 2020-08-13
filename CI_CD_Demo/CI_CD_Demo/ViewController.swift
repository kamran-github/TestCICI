//
//  ViewController.swift
//  CI_CD_Demo
//
//  Created by Kamran TNK on 12/08/20.
//  Copyright © 2020 Test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapLogin(_ sender: Any) {
        guard let username = usernameTF else { return }
        guard let password = passwordTF else { return }
        
        var alert = UIAlertController()
        
        if !self.validateEmail(emaiString: username.text!) {
          alert = UIAlertController(title: "Alert", message: "Invalid Email", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else if !self.validPassword(passwordString: password.text!) {
            alert = UIAlertController(title: "Alert", message: "Invalid Password", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else {
            
        }
    }
    
    func validateEmail(emaiString : String)->Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: emaiString)
    }
    
    func validPassword(passwordString : String)->Bool {
        if passwordString.count<8 {
            return false
        }
        return true
    }
    
    func callLoginWebservices(username : String, password : String) {
        
    }
    
}

