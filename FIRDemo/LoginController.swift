//
//  LoginController.swift
//  FIRDemo
//
//  Created by Ngoc on 10/26/16.
//  Copyright © 2016 GDG. All rights reserved.
//

import UIKit
import FirebaseDatabase
import Firebase


class LoginController: UIViewController, UITextFieldDelegate {
    
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.layer.cornerRadius = 10
        
        view.clipsToBounds = true
        
        
        return view
    }()
    
    
    let logoView: UIView = {
        
        let imageView = UIImageView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.contentMode = .scaleAspectFill
        
        imageView.image = UIImage(named: "skype")
        
        return imageView
    }()
    
    let usernameField: UITextField = {
        let textField = UITextField()
        
        textField.placeholder = "Skype Name"
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
        
    }()
    
    
    let passwordField: UITextField = {
        
        let textField = UITextField()
        
        textField.placeholder = "Password"
        
        textField.isSecureTextEntry = true
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
        
    }()
    
    let emailField: UITextField = {
        
        let textField = UITextField()
        
        textField.placeholder = "Email"
        
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
        
    }()
    

    
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("Register", for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.backgroundColor = UIColor.setRgb(r: 0 , g: 161, b: 227)
        
        button.setTitleColor(UIColor.white, for: .normal)
        
        button.layer.cornerRadius = 20
        
        //        button.layer.borderColor = UIColor.white.cgColor
        
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        
        button.clipsToBounds = true
        
        return button
        
    }()
    
    
    let separator: UIView = {
        let view = UIView()
        
        
        view.backgroundColor = UIColor.setRgb(r: 220, g: 220, b: 220)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
        
    }()
    
    let emailSeparator: UIView = {
        let view = UIView()
        
        
        view.backgroundColor = UIColor.setRgb(r: 220, g: 220, b: 220)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
        
    }()
    
    
    func setupLogoView(){
        //x, y, width, height
        
        
        logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        logoView.bottomAnchor.constraint(equalTo: containerView.topAnchor, constant: -30).isActive = true
        
        logoView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        logoView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
    }
    
    func setupContainerView(){
        
        //x, y, width, height
        
        
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        
        containerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        containerView.addSubview(usernameField)
        
        //x, y, width, height
        
        usernameField.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 12).isActive = true
        
        usernameField.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        
        usernameField.widthAnchor.constraint(equalTo: containerView.widthAnchor).isActive = true
        
        usernameField.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 1/3).isActive = true
        
        
        containerView.addSubview(separator)
        
        //x, y, width, height
        
        separator.topAnchor.constraint(equalTo: usernameField.bottomAnchor).isActive = true
        
        separator.leftAnchor.constraint(equalTo: containerView.leftAnchor).isActive = true
        
        separator.widthAnchor.constraint(equalTo: containerView.widthAnchor).isActive = true
        
        separator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        
        containerView.addSubview(emailField)
        
        //x, y, width, height
        
        emailField.leftAnchor.constraint(equalTo: usernameField.leftAnchor).isActive = true
        
        emailField.topAnchor.constraint(equalTo: separator.bottomAnchor).isActive = true
        
        emailField.widthAnchor.constraint(equalTo: usernameField.widthAnchor).isActive = true
        
        emailField.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 1/3).isActive = true
        
        containerView.addSubview(emailSeparator)
        
        //x, y, width, height
        
        emailSeparator.topAnchor.constraint(equalTo: emailField.bottomAnchor).isActive = true
        
        emailSeparator.leftAnchor.constraint(equalTo: containerView.leftAnchor).isActive = true
        
        emailSeparator.widthAnchor.constraint(equalTo: containerView.widthAnchor).isActive = true
        
        emailSeparator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        containerView.addSubview(passwordField)
        
        passwordField.topAnchor.constraint(equalTo: emailSeparator.bottomAnchor).isActive = true
        
        passwordField.leftAnchor.constraint(equalTo: emailField.leftAnchor).isActive = true
        
        passwordField.widthAnchor.constraint(equalTo: emailField.widthAnchor).isActive = true
        
        passwordField.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 1/3).isActive = true
        
        
    }
    
    func setupLoginButton(){
        //x,y, width, height
        
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        loginButton.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 20).isActive = true
        
        loginButton.widthAnchor.constraint(equalTo: containerView.widthAnchor).isActive = true
        
        loginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    
    override func viewDidLoad() {
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.setRgb(r: 0, g: 175, b: 240)
        
        view.addSubview(containerView)
        
        view.addSubview(loginButton)
        
        view.addSubview(logoView)
        
        setupContainerView()
        
        setupLoginButton()
        
        setupLogoView()
        
        loginButton.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        
    }
    
   
    func handleLogin(){
        
        guard let username = usernameField.text, let email = emailField.text, let password = passwordField.text else{
            return

        }
        
        
        FIRAuth.auth()?.createUser(withEmail: email, password: password, completion: { (user: FIRUser?, error) in
            if error != nil{
                print(error)
                if let castedError = error?.localizedDescription{
                    self.alertMessage(message: castedError)
                }
            
                return
            }
            
            guard let uid = user?.uid else{
                return
            }
            
            
            let ref = FIRDatabase.database().reference(fromURL: "https://firdemo-84b6b.firebaseio.com/").child("users").child(uid)
    
            let values = ["Username": username, "Email": email, "Password": password]
            
            ref.updateChildValues(values
                , withCompletionBlock: { (error, ref) in
                    
                    if error != nil{
                        print(error )
                        
                        return
                    }
            })
            
            let sController = SuccessfulController()
        
//            self.present(sController, animated: true, completion: nil)
            
            self.navigationController?.pushViewController(sController, animated: true)
        })
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    
    
//    override var preferredStatusBarStyle: UIStatusBarStyle{
//        return .lightContent
//    }
//    
    
    func alertMessage(message: String){
        let alert = UIAlertController.init(title: "Notice", message: message, preferredStyle: .alert)
        
        let button = UIAlertAction(title: "Dismiss", style: .cancel, handler: nil)
        
        alert.addAction(button)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }

    
}

extension UIColor{
    static func setRgb(r: CGFloat, g:CGFloat, b:CGFloat) -> UIColor{
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
