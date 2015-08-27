//
//  ViewController.swift
//  CircleProgressBar
//
//  Created by jacy on 15/8/27.
//  Copyright © 2015年 jacy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cpb: CircleProgressBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        cpb.borderWidth = 2
    }

    @IBAction func addClick(sender: AnyObject) {
        let newProgress = cpb.progress + 0.1
        cpb.progress = newProgress
    }
    @IBAction func clearClick(sender: AnyObject) {
        cpb.progress = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

