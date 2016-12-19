//
//  NewViewController.swift
//  OCSwiftComplex
//
//  Created by Charles Yao on 2016/12/19.
//  Copyright © 2016年 Charles Yao. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    
    @IBOutlet weak var discriptionLabel: UILabel!
    
    weak public var parentVC : ViewController! = nil
    
    @IBOutlet weak var textField: UITextField!
    @IBAction func changeTitleBtnClicked(_ sender: Any) {
        if self.checkTitleLegal(title: textField.text! as NSString) {//check the content that user inputted legal
            self.parentVC.changeTitle(self.textField.text);
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func checkTitleLegal(title : NSString) -> Bool {
        if title.length == 0 {
            let alertView : UIAlertController = UIAlertController.init(title: "Error", message: "Please enter the title", preferredStyle: UIAlertControllerStyle(rawValue: 1)!);
            alertView.addAction(UIAlertAction.init(title: "确定", style: UIAlertActionStyle(rawValue: 0)!, handler: { (UIAlertAction) in
                alertView.dismiss(animated: true, completion: nil);
            }));
            
            self.present(alertView, animated: true, completion: nil);
            return false;
        }
        return true;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("NewViewController viewDidLoad");
        self.discriptionLabel.text = "this is a Swift ViewController"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("%@",self.parentVC)
    }
}
