//
//  ViewController.swift
//  SwiftySpringAnimation
//
//  Created by Sugam Kalra on 25/11/17.
//  Copyright © 2017 Sugam Kalra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var labelPositionIsLeft = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func startAnimation(_ sender: Any) {
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            if self.labelPositionIsLeft {
                self.label.center.x = self.view.bounds.width - 100
            }
            else {
                self.label.center.x = 100
            }
            self.labelPositionIsLeft = !(self.labelPositionIsLeft)
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

