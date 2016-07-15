//
//  ViewController.swift
//  Singh
//
//  Created by Pharmacy Laptop 1 on 2/27/16.
//
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit



class ViewController: UIViewController, FBSDKLoginButtonDelegate
{

    @IBOutlet weak var SignIn_Button: UIButton!
    
    func buttonElement () {
        
        let borderAlpha : CGFloat = 0.7
        let cornerRadius : CGFloat = 5.0
        
        SignIn_Button.frame = CGRectMake(100, 100, 200, 40)
        SignIn_Button.setTitle(" Sign In ", forState: UIControlState.Normal)
        SignIn_Button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        SignIn_Button.backgroundColor = UIColor.clearColor()
        SignIn_Button.layer.borderWidth = 1.0
        SignIn_Button.layer.borderColor = UIColor(white: 1.0, alpha: borderAlpha).CGColor
        SignIn_Button.layer.cornerRadius = cornerRadius
        
    }
    
    
    
    @IBOutlet weak var SignUp_Button: UIButton!
    
    func buttonElement_SignUp () {
        let borderAlpha : CGFloat = 0.7
        let cornerRadius : CGFloat = 5.0
        
        SignUp_Button.frame = CGRectMake(100, 100, 200, 40)
        SignUp_Button.setTitle(" New User / Sign Up ", forState: UIControlState.Normal)
        SignUp_Button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        SignUp_Button.backgroundColor = UIColor.clearColor()
        SignUp_Button.layer.borderWidth = 1.0
        SignUp_Button.layer.borderColor = UIColor(white: 1.0, alpha: borderAlpha).CGColor
        SignUp_Button.layer.cornerRadius = cornerRadius
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        buttonElement()
        buttonElement_SignUp()
        
        if (FBSDKAccessToken.currentAccessToken() == nil )
        
        {
            print("Not logged in....")
        }
        else
        {
            print("Logged In..")
        }
        
        let loginButton = FBSDKLoginButton() //Replaced it with let because of SWIFT 2. Originally its var
        
        loginButton.readPermissions = ["public_profile", "email", "user_friends"]
        loginButton.center = self.view.center
        
        loginButton.delegate = self
        
        self.view.addSubview(loginButton)
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Mark: - Facebook Login
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        if error == nil
        {
                print("Login Complete")
            self.performSegueWithIdentifier("View_1", sender: self)
        }
        else
        {
            print(error.localizedDescription)
            
        }
        
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        print("user logged out...")
    }
    
}






