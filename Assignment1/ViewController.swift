//
//  ViewController.swift
//  Assignment1
//  Team member : Harmandeep Kaur and Simranjeet Singh Dhillon
//  Assignment : 1
//  Version : 1
//  Message : Animation added for UI and random images
//  Created by Simran on 2020-01-15.
//  Copyright © 2020 centennialcollege. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var color1: UIImageView!
    @IBOutlet weak var color2: UIImageView!
    @IBOutlet weak var color3: UIImageView!
    @IBOutlet weak var color4: UIImageView!
    @IBOutlet weak var color5: UIImageView!
    @IBOutlet weak var color6: UIImageView!
    @IBOutlet weak var color7: UIImageView!
    @IBOutlet weak var color8: UIImageView!
    @IBOutlet weak var color9: UIImageView!
    @IBOutlet weak var color10: UIImageView!
    @IBOutlet weak var color11: UIImageView!
    @IBOutlet weak var color12: UIImageView!
    @IBOutlet weak var color13: UIImageView!
    @IBOutlet weak var color14: UIImageView!
    @IBOutlet weak var color15: UIImageView!
    @IBOutlet weak var color16: UIImageView!
    @IBOutlet weak var color17: UIImageView!
    @IBOutlet weak var color18: UIImageView!
    @IBOutlet weak var color19: UIImageView!
    @IBOutlet weak var color20: UIImageView!
    @IBOutlet weak var color21: UIImageView!
    @IBOutlet weak var color22: UIImageView!
    @IBOutlet weak var color23: UIImageView!
    @IBOutlet weak var color24: UIImageView!
    @IBOutlet weak var color25: UIImageView!
    @IBOutlet weak var color26: UIImageView!
    @IBOutlet weak var color27: UIImageView!
    @IBOutlet weak var color28: UIImageView!
    @IBOutlet weak var color29: UIImageView!
    @IBOutlet weak var color30: UIImageView!
    @IBOutlet weak var color31: UIImageView!
    @IBOutlet weak var color32: UIImageView!
    @IBOutlet weak var color33: UIImageView!
    @IBOutlet weak var color34: UIImageView!
    @IBOutlet weak var color35: UIImageView!
    @IBOutlet weak var color36: UIImageView!
    @IBOutlet weak var color37: UIImageView!
    @IBOutlet weak var color38: UIImageView!
    @IBOutlet weak var color39: UIImageView!
    
    
    var initialFrame1 = CGRect()
    var initialFrame2 = CGRect()
    var initialFrame3 = CGRect()
    
    @IBAction func play(_ sender: Any) {
        assignImage1()
        assignImage2()
        assignImage3()
        
        self.view1.frame = self.initialFrame1
        self.view2.frame = self.initialFrame2
        self.view3.frame = self.initialFrame3

        
        UIView.animate(withDuration: 4, delay: 0, options: .curveEaseInOut, animations: {
            
            var frame = self.view1.frame
            frame.origin.y =  frame.origin.y + 840
            self.view1.frame = frame
            
        }) { (finish) in
            
        }
        
  

        
        UIView.animate(withDuration: 3, delay: 1, options: .curveEaseIn, animations: {
            
            var frame = self.view2.frame
            frame.origin.y =  frame.origin.y + 840
            self.view2.frame = frame
            
        }) { (finish) in
            
        }
        

        
        UIView.animate(withDuration: 2, delay: 2, options: .curveEaseOut, animations: {
            
            var frame = self.view3.frame
            frame.origin.y =  frame.origin.y + 840
            self.view3.frame = frame
            
        }) { (finish) in
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignImage1()
        assignImage2()
        assignImage3()
        
        initialFrame1 = view1.frame
        initialFrame2 = view2.frame
        initialFrame3 = view3.frame
        
//        color4.image = UIImage.init(named: "3")
//        color5.image = UIImage.init(named: "4")
//        color6.image = UIImage.init(named: "5")
//        color7.image = UIImage.init(named: "6")
//        color8.image = UIImage.init(named: "7")
//        color9.image = UIImage.init(named: "8")
        // Do any additional setup after loading the view.
    }
    
    func assignImage1() {
        for n in 1...13 {
            switch n {
            
                case 1:
                    var i = Int.random(in: 0..<9)
                    color1.image = UIImage.init(named: String(i))
                    break
                case 2:
                    var i = Int.random(in: 0..<9)
                    color2.image = UIImage.init(named: String(i))
                    break
                case 3:
                    var i = Int.random(in: 0..<9)
                    color3.image = UIImage.init(named: String(i))
                    break
                case 4:
                    var i = Int.random(in: 0..<9)
                    color4.image = UIImage.init(named: String(i))
                    break
                case 5:
                    var i = Int.random(in: 0..<9)
                    color5.image = UIImage.init(named: String(i))
                    break
                case 6:
                    var i = Int.random(in: 0..<9)
                    color6.image = UIImage.init(named: String(i))
                    break
                case 7:
                    var i = Int.random(in: 0..<9)
                    color7.image = UIImage.init(named: String(i))
                    break
                case 8:
                    var i = Int.random(in: 0..<9)
                    color8.image = UIImage.init(named: String(i))
                    break
                case 9:
                    var i = Int.random(in: 0..<9)
                    color9.image = UIImage.init(named: String(i))
                    break
                case 10:
                    var i = Int.random(in: 0..<9)
                    color10.image = UIImage.init(named: String(i))
                    break
                case 11:
                    var i = Int.random(in: 0..<9)
                    color11.image = UIImage.init(named: String(i))
                    break
                case 12:
                    var i = Int.random(in: 0..<9)
                    color12.image = UIImage.init(named: String(i))
                    break
                case 13:
                    var i = Int.random(in: 0..<9)
                    color13.image = UIImage.init(named: String(i))
                    break
            default: break
                
                
            }
            
        }
    }
    
    func assignImage2() {
        for n in 1...13 {
            switch n {
            
                case 1:
                    var i = Int.random(in: 0..<9)
                    color14.image = UIImage.init(named: String(i))
                    break
                case 2:
                    var i = Int.random(in: 0..<9)
                    color15.image = UIImage.init(named: String(i))
                    break
                case 3:
                    var i = Int.random(in: 0..<9)
                    color16.image = UIImage.init(named: String(i))
                    break
                case 4:
                    var i = Int.random(in: 0..<9)
                    color17.image = UIImage.init(named: String(i))
                    break
                case 5:
                    var i = Int.random(in: 0..<9)
                    color18.image = UIImage.init(named: String(i))
                    break
                case 6:
                    var i = Int.random(in: 0..<9)
                    color19.image = UIImage.init(named: String(i))
                    break
                case 7:
                    var i = Int.random(in: 0..<9)
                    color20.image = UIImage.init(named: String(i))
                    break
                case 8:
                    var i = Int.random(in: 0..<9)
                    color21.image = UIImage.init(named: String(i))
                    break
                case 9:
                    var i = Int.random(in: 0..<9)
                    color22.image = UIImage.init(named: String(i))
                    break
                case 10:
                    var i = Int.random(in: 0..<9)
                    color23.image = UIImage.init(named: String(i))
                    break
                case 11:
                    var i = Int.random(in: 0..<9)
                    color24.image = UIImage.init(named: String(i))
                    break
                case 12:
                    var i = Int.random(in: 0..<9)
                    color25.image = UIImage.init(named: String(i))
                    break
                case 13:
                    var i = Int.random(in: 0..<9)
                    color26.image = UIImage.init(named: String(i))
                    break
            default: break
    
            }
        }
    }
    
    func assignImage3() {
        for n in 1...13 {
            switch n {
            
                case 1:
                    var i = Int.random(in: 0..<9)
                    color27.image = UIImage.init(named: String(i))
                    break
                case 2:
                    var i = Int.random(in: 0..<9)
                    color28.image = UIImage.init(named: String(i))
                    break
                case 3:
                    var i = Int.random(in: 0..<9)
                    color29.image = UIImage.init(named: String(i))
                    break
                case 4:
                    var i = Int.random(in: 0..<9)
                    color30.image = UIImage.init(named: String(i))
                    break
                case 5:
                    var i = Int.random(in: 0..<9)
                    color31.image = UIImage.init(named: String(i))
                    break
                case 6:
                    var i = Int.random(in: 0..<9)
                    color32.image = UIImage.init(named: String(i))
                    break
                case 7:
                    var i = Int.random(in: 0..<9)
                    color33.image = UIImage.init(named: String(i))
                    break
                case 8:
                    var i = Int.random(in: 0..<9)
                    color34.image = UIImage.init(named: String(i))
                    break
                case 9:
                    var i = Int.random(in: 0..<9)
                    color35.image = UIImage.init(named: String(i))
                    break
                case 10:
                    var i = Int.random(in: 0..<9)
                    color36.image = UIImage.init(named: String(i))
                    break
                case 11:
                    var i = Int.random(in: 0..<9)
                    color37.image = UIImage.init(named: String(i))
                    break
                case 12:
                    var i = Int.random(in: 0..<9)
                    color38.image = UIImage.init(named: String(i))
                    break
                case 13:
                    var i = Int.random(in: 0..<9)
                    color39.image = UIImage.init(named: String(i))
                    break
            default: break
                
                
            }
            
        }
    }
    
    


}

