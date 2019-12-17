//
//  ViewController.swift
//  Custom_Dialog
//
//  Created by Enamul Haque on 12/17/19.
//  Copyright © 2019 HaqueIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCustom_Dialog(_ sender: Any) {
        let customAlert = self.storyboard?.instantiateViewController(withIdentifier: "Custom_Dialog") as! Custom_Dialog
            //  customAlert.refresh_view_delegate = self
           
              
              customAlert.providesPresentationContextTransitionStyle = true
              customAlert.definesPresentationContext = true
              customAlert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
              customAlert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
              ///customAlert.delegate = self
              
              
              
              self.present(customAlert, animated: true, completion: nil)
    }
    
}

