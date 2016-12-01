//
//  ViewController.swift
//  PopoverDemo
//
//  Created by NguyenDucBien on 11/22/16.
//  Copyright © 2016 NguyenDucBien. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate{
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblComment: UILabel!

    @IBOutlet weak var tf_comment: UITextField!
    
    @IBOutlet weak var hinhanhimage: UIImageView!
    
//    var commentList = ["ImageUser", "nameUser", "noidungComment"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showView"){
            
            let controller = segue.destinationViewController
            controller.popoverPresentationController?.delegate = self
            controller.preferredContentSize = CGSize(width: 220, height: 30)
        }
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return.None
    }
    
    
    @IBAction func btnSend(sender: AnyObject) {
        setComment()
    }
    
    
    func setComment(){
        let comment = tf_comment.text
        if (String(comment) != nil){
            lblComment.text = String(comment!)
            lblName.text = "Đức Biên :"
            tf_comment.text = ""
        }

        else{
            lblComment.text = ""
            lblName.text = ""
        }
    
    }



}

