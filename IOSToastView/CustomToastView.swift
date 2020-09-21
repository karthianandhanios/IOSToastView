//
//  CustomToastView.swift
//  IOSToastView
//
//  Created by Karthi Anandhan on 21/09/20.
//  Copyright © 2020 Karthi. All rights reserved.
//

import UIKit

enum ToastPosition {
    case middle
    case bottom
}
struct ToastMessage {
    var message:String
    var position:ToastPosition
    var showtimeInSeconds:Int
}

class customToast {
    class func showToastMessage(toastMessage: ToastMessage, controller : UIViewController) {
        let position: UIAlertController.Style = toastMessage.position == ToastPosition.middle ? UIAlertController.Style.alert : UIAlertController.Style.actionSheet
        let refreshAlert = UIAlertController(title:toastMessage.message, message: nil, preferredStyle: position)
        controller.present(refreshAlert, animated: true, completion: nil)
        DispatchQueue.main.asyncAfter(deadline:.now() + .seconds(toastMessage.showtimeInSeconds)) {
            refreshAlert.dismiss(animated: true, completion: nil)
        }
    }
}
