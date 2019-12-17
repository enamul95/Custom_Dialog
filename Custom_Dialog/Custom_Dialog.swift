//
//  Custom_Dialog.swift
//  Custom_Dialog
//
//  Created by Enamul Haque on 12/17/19.
//  Copyright © 2019 HaqueIT. All rights reserved.
//

import UIKit

class Custom_Dialog: UIViewController {

    @IBOutlet weak var dialog_view: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btncancel(_ sender: Any) {
        
         self.dismiss(animated: true, completion: nil)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupView()
        animateView()
        
    }
    
    func setupView() {
        dialog_view.layer.cornerRadius = 15
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.1)
    }
    
    func animateView() {
        dialog_view.alpha = 0;
        self.dialog_view.frame.origin.y = self.dialog_view.frame.origin.y + 50
        UIView.animate(withDuration: 0.4, animations: { () -> Void in
            self.dialog_view.alpha = 1.0;
            self.dialog_view.frame.origin.y = self.dialog_view.frame.origin.y - 50
        })
    }
    

}
