//
//  PopViewController.swift
//  PopoverDemo
//
//  Created by NguyenDucBien on 11/22/16.
//  Copyright © 2016 NguyenDucBien. All rights reserved.
//

import UIKit

class PopViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionButton(sender: AnyObject) {
        if(sender.tag == 101){
            print("Like")
        }
        if(sender.tag == 102){
            print("Love")
        }
        if(sender.tag == 103){
            print("Haha")
        }
        if(sender.tag == 104){
            print("Wowww")
        }
        if(sender.tag == 105){
            print("So sad")
        }
        if(sender.tag == 106){
            print("Angry")
        }
    }
    
    

}

