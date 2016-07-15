//
//  View_1.swift
//  Singh
//
//  Created by Pharmacy Laptop 1 on 2/28/16.
//
//

import UIKit

class View_1: UIViewController {

    @IBOutlet weak var Fb_LogIn: UIButton!
    
    func fb_LogIn () {
        
        let borderAlpha : CGFloat = 0.7
        let cornerRadius : CGFloat = 5.0
        
        Fb_LogIn.frame = CGRectMake(100, 100, 200, 40)
        Fb_LogIn.setTitle(" Sign In ", forState: UIControlState.Normal)
        Fb_LogIn.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        Fb_LogIn.backgroundColor = UIColor.clearColor()
        Fb_LogIn.layer.borderWidth = 1.0
        Fb_LogIn.layer.borderColor = UIColor(white: 1.0, alpha: borderAlpha).CGColor
        Fb_LogIn.layer.cornerRadius = cornerRadius
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fb_LogIn()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
