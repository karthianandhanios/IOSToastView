//
//  ViewController.swift
//  IOSToastView
//
//  Created by Karthi Anandhan on 21/09/20.
//  Copyright © 2020 Karthi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var showToastInMiddle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showToastAtMiddle(_ sender: Any) {
        print("showToastAtMiddle")
        customToast.showToastMessage(toastMessage: ToastMessage(message: "This is the message we need to show here!", position: ToastPosition.middle, showtimeInSeconds: 2), controller: self)
    }
    @IBAction func showToastAtBottom(_ sender: Any) {
        customToast.showToastMessage(toastMessage: ToastMessage(message: "Your data is saved properly!", position: ToastPosition.bottom, showtimeInSeconds: 2), controller: self)
        print("showToastAtBottom")
    }
    
}

