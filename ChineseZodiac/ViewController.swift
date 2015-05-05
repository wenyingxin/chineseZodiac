//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by roshan on 15/5/5.
//  Copyright (c) 2015年 LHLL LJU55+66+66666666+66669989999966+666696969666996. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var Img: UIImageView!
    
    let offset = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func okTapped(sender: AnyObject) {
        //输入框失去焦点，隐藏数字键盘
        yearOfBirth.resignFirstResponder()
        
        if let year = yearOfBirth.text.toInt(){
            
            var imgNo = (year-offset)%12
            //year
            Img.image = UIImage(named:String(imgNo))
            
        }else{
            
            //notify user
        }
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        //输入框失去焦点，隐藏数字键盘
        yearOfBirth.resignFirstResponder()
    }

}

