//
//  RateFoodVC.swift
//  ChainAnimation
//
//  Created by anjani on 13/11/2017.
//  Copyright © 2017 anjani vangallu. All rights reserved.
//

import UIKit

class RateFoodVC: UIViewController {
    
    
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var darkFillView: UIViewX!
    @IBOutlet weak var toggleMenuButton: UIButton!
    
    @IBOutlet weak var fb: RoundButton!
    @IBOutlet weak var instagram: RoundButton!
    @IBOutlet weak var twitter: RoundButton!
    @IBOutlet weak var googlePlus: RoundButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //8. we want the buttons to hide
        fb.alpha = 0
        instagram.alpha = 0
        twitter.alpha = 0
        googlePlus.alpha = 0
        
    }
    
    @IBAction func togleMenu(_ sender: Any) {
        
        if darkFillView.transform == CGAffineTransform.identity {
            //this one is for view to transform i mean to expain with scale value
            UIView.animate(withDuration: 1, animations: {
                //1.this one is for view to transform i mean to expain with scale value and in stroyboard tick to click to bound to fit inside the view
                self.darkFillView.transform = CGAffineTransform(scaleX: 11, y: 11)
                //3. now we will make the menuview to change position in our case we will make to move up from outside -74 y
                self.menuView.transform = CGAffineTransform(translationX: 0, y: -74)
                //5. now we need the button to rotate
                //here rotatingAngle if we keep 180 its wont work we need radians we will do it in function
                self.toggleMenuButton.transform = CGAffineTransform(rotationAngle: self.radians(180))
            }) { (true) in
                //10.
                UIView.animate(withDuration: 0.6, animations: {
                    self.tuggleShareButtons()
                })
                //9 to show button
               // self.tuggleShareButtons()
            }
        } else {
            UIView.animate(withDuration: 1, animations: {
                //2.thisone is to go back to position
                self.darkFillView.transform = .identity
                //4.now we will make the menuview to back to original position
                self.menuView.transform = .identity
                //7.
                self.toggleMenuButton.transform = .identity
                
                //10.
                self.tuggleShareButtons()
            })
            
        }
    }
    //6.
    func radians(_ degrees:Double) -> CGFloat {
        return CGFloat(degrees * .pi / degrees)
    }
    
    // 10.
    func tuggleShareButtons() {
        let alpha = CGFloat(fb.alpha == 0 ? 1 : 0)
        self.fb.alpha = alpha
        self.twitter.alpha = alpha
        self.googlePlus.alpha = alpha
        self.instagram.alpha = alpha
    
    }
}
