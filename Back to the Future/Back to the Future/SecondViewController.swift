//
//  SecondViewController.swift
//  Back to the Future
//
//  Created by Ivan Caldwell on 12/14/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    // Outlets and Actions
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    
    @IBOutlet weak var stackLabel: UIStackView!
    @IBAction func ButtonClicked(_ sender: Any) {
        let utility = Utilities()
        let year = utility.GetRandomYear()
        labelOne.text = utility.GetLetterAtIndex(str: year, location: 0)
        labelTwo.text = utility.GetLetterAtIndex(str: year, location: 1)
        labelThree.text = utility.GetLetterAtIndex(str: year, location: 2)
        labelFour.text = utility.GetLetterAtIndex(str: year, location: 3)
        
        
        
        // Animation does not do any Blocking
        UIView.animate(withDuration: 0.5) {
            self.stackLabel.center.x += self.view.bounds.width
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

