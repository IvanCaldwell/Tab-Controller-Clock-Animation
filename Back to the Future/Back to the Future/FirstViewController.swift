//
//  FirstViewController.swift
//  Back to the Future
//
//  Created by Ivan Caldwell on 12/14/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    // Variables and Constants
    var timer = Timer()
    
    
    // Outlets and Actions
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let year = Utilities().GetCurrentYear()
        labelOne.text = Utilities().GetLetterAtIndex(str: year, location: 0)
        labelTwo.text = Utilities().GetLetterAtIndex(str: year, location: 1)
        labelThree.text = Utilities().GetLetterAtIndex(str: year, location: 2)
        labelFour.text = Utilities().GetLetterAtIndex(str: year, location: 3)
        
        // Show the Tick
        Tick()
        
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.Tick), userInfo: nil, repeats: true)
    }
    
    @objc func Tick () {
        timeLabel.text = Utilities().GetCurrentTime()
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseOut, animations: {
            self.view.alpha = 0.5
        }) { (true) in
            self.view.alpha = 1.0
        }
    }


}

