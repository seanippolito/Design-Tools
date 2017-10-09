//
//  ViewController.swift
//  DesignTools
//
//  Created by Sean on 10/8/17.
//  Copyright © 2017 Sean Ippolito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pulseButtonTapped(_ sender: UIButtonX) {
        sender.pulsate()
    }
    
    @IBAction func flashButtonTapped(_ sender: UIButtonX) {
        sender.flash()
    }
    
    @IBAction func shakeButtonTapped(_ sender: UIButtonX) {
        sender.shake()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

