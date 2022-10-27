//
//  ViewController.swift
//  IOSClubProject1
//
//  Created by student on 10/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottomSheetView: UIView!
    
    @IBOutlet weak var LogInButton: UIButton!

    @IBOutlet weak var userEmailInput: UITextField!
    
    @IBOutlet weak var userPasswordInput: UITextField!
    
    @IBOutlet weak var correctImagePassword: UIImageView!
    
    @IBOutlet weak var incorrectImagePassword: UIImageView!
    @IBOutlet weak var SingUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearIcon()
        self.bottomSheetView.layer.cornerRadius = 50
        
    }
    
    @IBAction func LogIn(_ sender: Any){
        clearIcon()
        if(userPasswordInput.text == "admin123" && userEmailInput.text == "admin"){
            correctImagePassword.alpha=1
        }
        else {
            print(passwordValidator(password: userPasswordInput.text!))
            clearInputs()
            incorrectImagePassword.alpha=1
            return
        }
    }
    
    func clearInputs(){
        userEmailInput.text=""
        userPasswordInput.text=""
    }
    func clearIcon(){
        correctImagePassword.alpha=0
        incorrectImagePassword.alpha=0
    }
    
    @IBAction func didTapSignUp(_ sender: Any) {
        if(userEmailInput.text != " " && userEmailInput.text != ""){
//            loginInfo[userEmailInput.text!] = userPasswordInput.text
            clearIcon()
            clearInputs()
        }
        else{return}
    }
    
    let list = "qwertyuiopasdfghjklzxcvbnm`~!@#$%^&*()_-+=|:;<,>.?/{}[]QWERTYUIOPASDFGHJKLZXCVBNM"
    func passwordValidator(password:String) -> Bool{
        var check1 = Bool(false) // check if all characters are not numbers
        var check2 = Bool(false) // check if more than 6 and less than 20
        var check3 = Bool(false) // check if don't contain space
        //firs  bool
        for char in list{
            if (password.contains(char)){
                check1 = true                }
            else{}
        }
        //second bool
        if (password.count >= 6 && password.count <= 20){check2 = true}
        else{check2 = false}
        //third bool
        if(password.contains(" ")){check3 = false}
        else{check3 = true}
        
        if(check1 == true && check2 == true && check3 == true){return true}
        else{return false}
        
    }

}

