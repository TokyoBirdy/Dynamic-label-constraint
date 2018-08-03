//
//  ViewController.swift
//  FlexibleConstraints
//
//  Created by ceciliah on 8/3/18.
//  Copyright © 2018 Humlan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let staticText = "let me gow like in the mateor garden, it's short but beautiful"

    var txt: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txt = staticText
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
}

