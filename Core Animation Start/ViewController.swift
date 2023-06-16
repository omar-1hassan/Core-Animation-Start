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
       // animation(show: !isActive)
        springAnimation(show: !isActive)
    }
    private func animation(show: Bool) {
        UIView.animate(withDuration: 0.6) { [weak self] in
            if show {
                self?.showAlert()
            } else{
                self?.hideAlert()
            }
            self?.view.layoutIfNeeded()
        }
    }
    private func springAnimation(show: Bool){
        UIView.animate(withDuration: 1,
                       delay: 0,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 0.4,
                       options: .curveEaseIn) { [weak self] in
            if show {
                self?.showAlert()
            } else{
                self?.hideAlert()
            }
            self?.view.layoutIfNeeded()
        } completion: { _ in
            print("Spring Animation is Done")
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

