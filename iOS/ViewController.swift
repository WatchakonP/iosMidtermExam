//
//  ViewController.swift
//  iOS
//
//  Created by Watcha Pon on 3/22/17.
//  Copyright © 2017 Indie Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    var randomPassword : Int = 1111
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genPassword()
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard(){
        view.endEditing(true)
    }
    func genPassword(){
        randomPassword = Int(arc4random_uniform(10000))
        passwordLabel.text = String(randomPassword)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        if(inputText.text != passwordLabel.text){
            genPassword()
            inputText.text = ""
        }
        else{
            let myVC = storyboard?.instantiateViewController(withIdentifier: "UITabBarViewController") as! UITabBarViewController
            myVC.password = passwordLabel.text!
            self.present(myVC, animated: true, completion: nil)
            //navigationController?.pushViewController(myVC, animated: true)
        }
    }
}
