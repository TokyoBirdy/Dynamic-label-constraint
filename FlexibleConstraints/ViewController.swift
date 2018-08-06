//
//  ViewController.swift
//  FlexibleConstraints
//
//  Created by ceciliah on 8/3/18.
//  Copyright © 2018 Humlan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let staticText = "8s"

    var txt: String = "8s"

    @IBOutlet var labelBottomConstraint: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        adjustableLabel.text = staticText

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var adjustableLabel: UILabel!

    @IBAction func tapped(_ sender: Any) {
        txt += staticText
        adjustableLabel.text = txt
    }
    
    @IBAction func retracted(_ sender: Any) {
        txt = staticText
        adjustableLabel.text = txt
    }

    @IBAction func animateLabelPosition(_ sender: Any) {
       // labelBottomConstraint.constant = 20
        UIView.animate(withDuration: 0.3) {
            self.adjustableLabel.center.y -= 8
        }
    }

    @IBAction func animatedownLabelPosition(_ sender: Any) {
        //labelBottomConstraint.constant = 12
        UIView.animate(withDuration: 0.3) {
            self.adjustableLabel.center.y += 8
        }
    }
}

