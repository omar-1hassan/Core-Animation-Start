//
//  ViewController.swift
//  Core Animation Start
//
//  Created by mac on 16/06/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var alertViewTopConstraint: NSLayoutConstraint!
    var isActive = true
    override func viewDidLoad() {
        super.viewDidLoad()
        hideAlert()

    }

    @IBAction func btnClicked(_ sender: Any) {
        animation(show: !isActive)
    }
    private func animation(show: Bool) {
        if show {
            showAlert()
        } else{
            hideAlert()
        }
    }
    private func hideAlert(){
        isActive = false
        alertViewTopConstraint.constant = -(alertView.frame.origin.y) - alertView.frame.height
        
    }
    private func showAlert(){
        isActive = true
        alertViewTopConstraint.constant = 20
    }
    
}

