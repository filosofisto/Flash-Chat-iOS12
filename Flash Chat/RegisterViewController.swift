//
//  RegisterViewController.swift
//  Flash Chat
//
//  This is the View Controller which registers new users with Firebase
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {

    
    //Pre-linked IBOutlets

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  
    @IBAction func registerPressed(_ sender: AnyObject) {
        
        SVProgressHUD.show()

        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (result, error) in
            
            SVProgressHUD.dismiss()
            
            if (error != nil) {
                print(error)
            } else {
//                print("Registration successful!")
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
        

        
        
    } 
    
    
}
