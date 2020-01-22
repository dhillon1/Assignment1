//
//  ViewController.swift
//  Assignment1
//  Team member : Harmandeep Kaur and Simranjeet Singh Dhillon
//  Assignment : 1
//  Version : 2
//  Message : Images in ui shown with betline
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
    
    var grapes = 0;
    var bananas = 0;
    var oranges = 0;
    var cherries = 0;
    var bars = 0;
    var bells = 0;
    var sevens = 0;
    var blanks = 0;
    
    var flag1 = -1
    var flag2 = -1
    var flag3 = -1
    
    @IBAction func play(_ sender: Any) {
        
        Reels()
        print(flag1 , flag2, flag3)
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
       
    }
    
    
    
    func checkRange(value :  Int,lowerBounds : Int,upperBounds : Int) -> Int {
        if (value >= lowerBounds && value <= upperBounds)
        {
            return value;
        }
        else {
            return -1;
        }
    }
    
    func Reels() -> [String] {
        var betLine = [" ", " ", " "];
        var outCome = [0, 0, 0];

        for spin in 0...2 {
            outCome[spin] = Int.random(in: 1...65);
            switch (outCome[spin]) {
            case checkRange(value: outCome[spin], lowerBounds: 1, upperBounds: 27):  // 41.5% probability
                    betLine[spin] = "0";
                    blanks = blanks + 1;
                    break;
            case checkRange(value: outCome[spin], lowerBounds: 28, upperBounds: 37): // 15.4% probability
                    betLine[spin] = "1";
                    grapes = grapes + 1 ;
                    break;
            case checkRange(value: outCome[spin], lowerBounds: 38, upperBounds: 46): // 13.8% probability
                    betLine[spin] = "2";
                    bananas = bananas + 1;
                    break;
            case checkRange(value: outCome[spin], lowerBounds: 47, upperBounds: 54): // 12.3% probability
                    betLine[spin] = "3";
                    oranges = oranges + 1;
                    break;
            case checkRange(value: outCome[spin], lowerBounds: 55, upperBounds: 59): //  7.7% probability
                    betLine[spin] = "4";
                    cherries = cherries + 1;
                    break;
            case checkRange(value: outCome[spin], lowerBounds: 60, upperBounds: 62): //  4.6% probability
                    betLine[spin] = "5";
                    bars = bars + 1;
                    break;
            case checkRange(value: outCome[spin], lowerBounds: 63, upperBounds: 64): //  3.1% probability
                    betLine[spin] = "6";
                    bells =  bells + 1;
                    break;
            case checkRange(value: outCome[spin], lowerBounds: 65, upperBounds: 65): //  1.5% probability
                    betLine[spin] = "7";
                    sevens = sevens + 1;
                    break;
            default:
                break
            }
        }
        flag1 = Int(betLine[0])!
        flag2 = Int(betLine[1])!
        flag3 = Int(betLine[2])!
        
        print(outCome)
        print(betLine)
        return betLine;
    }

    
    
    func assignImage1() {
        for n in 1...13 {
            switch n {
            
                case 1:
                    var i = Int.random(in: 0...7)
                    color1.image = UIImage.init(named: String(i))
                    break
                case 2:
                    var i = Int.random(in: 0...7)
                    color2.image = UIImage.init(named: String(i))
                    break
                case 3:
                    var i = Int.random(in: 0...7)
                    color3.image = UIImage.init(named: String(i))
                    break
                case 4:
                    if(flag1 == -1){
                        var i = Int.random(in: 0...9)
                        color4.image = UIImage.init(named: String(i))
                    }else{
                        color4.image = UIImage.init(named: String(flag1))
                    }
                    break
                case 5:
                    var i = Int.random(in: 0...7)
                    color5.image = UIImage.init(named: String(i))
                    break
                case 6:
                    var i = Int.random(in: 0...7)
                    color6.image = UIImage.init(named: String(i))
                    break
                case 7:
                    var i = Int.random(in: 0...7)
                    color7.image = UIImage.init(named: String(i))
                    break
                case 8:
                    var i = Int.random(in: 0...7)
                    color8.image = UIImage.init(named: String(i))
                    break
                case 9:
                    var i = Int.random(in: 0...7)
                    color9.image = UIImage.init(named: String(i))
                    break
                case 10:
                    var i = Int.random(in: 0...7)
                    color10.image = UIImage.init(named: String(i))
                    break
                case 11:
                    var i = Int.random(in: 0...7)
                    color11.image = UIImage.init(named: String(i))
                    break
                case 12:
                    var i = Int.random(in: 0...7)
                    color12.image = UIImage.init(named: String(i))
                    break
                case 13:
                    var i = Int.random(in: 0...7)
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
                    var i = Int.random(in: 0...7)
                    color14.image = UIImage.init(named: String(i))
                    break
                case 2:
                    var i = Int.random(in: 0...7)
                    color15.image = UIImage.init(named: String(i))
                    break
                case 3:
                    var i = Int.random(in: 0...7)
                    color16.image = UIImage.init(named: String(i))
                    break
                case 4:
                    if(flag2 == -1){
                        var i = Int.random(in: 0...9)
                        color17.image = UIImage.init(named: String(i))
                    }else{
                        color17.image = UIImage.init(named: String(flag2))
                    }
                    break
                case 5:
                    var i = Int.random(in: 0...7)
                    color18.image = UIImage.init(named: String(i))
                    break
                case 6:
                    var i = Int.random(in: 0...7)
                    color19.image = UIImage.init(named: String(i))
                    break
                case 7:
                    var i = Int.random(in: 0...7)
                    color20.image = UIImage.init(named: String(i))
                    break
                case 8:
                    var i = Int.random(in: 0...7)
                    color21.image = UIImage.init(named: String(i))
                    break
                case 9:
                    var i = Int.random(in: 0...7)
                    color22.image = UIImage.init(named: String(i))
                    break
                case 10:
                    var i = Int.random(in: 0...7)
                    color10.image = UIImage.init(named: String(i))
                    break
                case 11:
                    var i = Int.random(in: 0...7)
                    color24.image = UIImage.init(named: String(i))
                    break
                case 12:
                    var i = Int.random(in: 0...7)
                    color25.image = UIImage.init(named: String(i))
                    break
                case 13:
                    var i = Int.random(in: 0...7)
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
                    var i = Int.random(in: 0...7)
                    color27.image = UIImage.init(named: String(i))
                    break
                case 2:
                    var i = Int.random(in: 0...7)
                    color28.image = UIImage.init(named: String(i))
                    break
                case 3:
                    var i = Int.random(in: 0...7)
                    color29.image = UIImage.init(named: String(i))
                    break
                case 4:
                    if(flag3 == -1){
                        var i = Int.random(in: 0...9)
                        color30.image = UIImage.init(named: String(i))
                    }else{
                        color30.image = UIImage.init(named: String(flag3))
                    }
                    break
                case 5:
                    var i = Int.random(in: 0...7)
                    color31.image = UIImage.init(named: String(i))
                    break
                case 6:
                    var i = Int.random(in: 0...7)
                    color32.image = UIImage.init(named: String(i))
                    break
                case 7:
                    var i = Int.random(in: 0...7)
                    color33.image = UIImage.init(named: String(i))
                    break
                case 8:
                    var i = Int.random(in: 0...7)
                    color34.image = UIImage.init(named: String(i))
                    break
                case 9:
                    var i = Int.random(in: 0...7)
                    color35.image = UIImage.init(named: String(i))
                    break
                case 10:
                    var i = Int.random(in: 0...9)
                    color10.image = UIImage.init(named: String(i))
                    break
                case 11:
                    var i = Int.random(in: 0...7)
                    color37.image = UIImage.init(named: String(i))
                    break
                case 12:
                    var i = Int.random(in: 0...7)
                    color38.image = UIImage.init(named: String(i))
                    break
                case 13:
                    var i = Int.random(in: 0...7)
                    color39.image = UIImage.init(named: String(i))
                    break
            default: break
                
                
            }
            
        }
    }
    
    


}

