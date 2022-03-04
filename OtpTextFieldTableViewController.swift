//
//  OtpTextFieldTableViewController.swift
//  login
//
//  Created by thamizharasan t on 04/03/22.
//

import UIKit

class OtpTextFieldTableViewController: UITableViewController {
    @IBOutlet weak var otpTextField1: UITextField!
    @IBOutlet weak var otpTextField2: UITextField!
    @IBOutlet weak var otpTextField3: UITextField!
    @IBOutlet weak var otpTextField4: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      
        otpTextField1.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
   otpTextField2.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
   otpTextField3.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
   otpTextField4.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
    }
    @objc func textFieldDidChange(textField: UITextField){
            let text = textField.text
            if  text?.count == 1 {
                switch textField{
                case otpTextField1:
                    otpTextField2.becomeFirstResponder()
                case otpTextField2:
                    otpTextField3.becomeFirstResponder()
                case otpTextField3:
                    otpTextField4.becomeFirstResponder()
                case otpTextField4:
                    otpTextField4.resignFirstResponder()
                default:
                    break
                }
            }
            if  text?.count == 0 {
                switch textField{
                case otpTextField1:
                    otpTextField1.becomeFirstResponder()
                case otpTextField2:
                    otpTextField1.becomeFirstResponder()
                case otpTextField3:
                    otpTextField2.becomeFirstResponder()
                case otpTextField4:
                    otpTextField3.becomeFirstResponder()
                default:
                    break
                }
            }
            else{

            }
        }
}

