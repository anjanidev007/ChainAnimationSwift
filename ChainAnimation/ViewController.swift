//
//  ViewController.swift
//  ChainAnimation
//
//  Created by anjani on 13/11/2017.
//  Copyright © 2017 anjani vangallu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bg: UIImageView!
    @IBOutlet weak var TasteLabel: UILabel!
    @IBOutlet weak var yourFoodLabel: UILabel!
    @IBOutlet weak var yourRatingLabel: UILabel!
    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var findyourFoodLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bg.alpha = 0
        TasteLabel.alpha = 0
        yourFoodLabel.alpha = 0
        yourRatingLabel.alpha = 0
        Button.alpha = 0
        findyourFoodLabel.alpha = 0
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.6, animations: {
            self.bg.alpha = 0.7
        }) { (true) in
            self.taselabelFunc()
    }

    
}

func taselabelFunc() {
        UIView.animate(withDuration:0.6, animations: {
            self.TasteLabel.alpha = 1
        }, completion: { (true) in
            self.yourFoodLabelFunc()
        })
}
func yourFoodLabelFunc() {
        UIView.animate(withDuration: 0.5, animations: {
            self.yourFoodLabel.alpha = 1
        }, completion: { (true) in
            self.yourRatingLabelFunc()
        })
    }
func yourRatingLabelFunc() {
        UIView.animate(withDuration: 0.5, animations: {
            self.yourRatingLabel.alpha = 1
        }, completion: { (true) in
            self.ButtonandFindLablFunc()
        })
    }

func ButtonandFindLablFunc() {
        UIView.animate(withDuration: 1) {
            self.Button.alpha = 1
            self.findyourFoodLabel.alpha = 1
        }
    }
    
}





