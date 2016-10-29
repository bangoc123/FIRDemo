//
//  SuccessfulController.swift
//  FIRDemo
//
//  Created by Ngoc on 10/26/16.
//  Copyright © 2016 GDG. All rights reserved.
//

import UIKit
import Firebase

class SuccessfulController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    
        view.backgroundColor = UIColor.white
        
        self.navigationItem.title = "Successful View"
        
    }
    

    
    func handleLogout(){
        
        do {
            try FIRAuth.auth()?.signOut()
        } catch let loggoutError {
            print(loggoutError)
        }
        
//        self.present(LoginController(), animated: true, completion: nil)
        
        self.navigationController?.pushViewController(LoginController(), animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
