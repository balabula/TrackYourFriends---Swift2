/**
* Copyright (c) 2015-present, Parse, LLC.
* All rights reserved.
*
* This source code is licensed under the BSD-style license found in the
* LICENSE file in the root directory of this source tree. An additional grant
* of patent rights can be found in the PATENTS file in the same directory.
*/

import UIKit
import Parse

class ViewController: UIViewController {
    
    @IBOutlet weak var txtPwd: UITextField!
    @IBOutlet weak var txtUserName: UITextField!
    
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnRegister: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        test()
        initUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func test(){
//        self.imageView.image = UIImage(named: "password.png")
    }
    
    private func initUI(){
        
        self.btnLogin.layer.cornerRadius = 2
        self.btnLogin.layer.borderWidth = 1
        self.btnLogin.layer.borderColor = UIColor.orangeColor().CGColor
        
        self.btnRegister.layer.cornerRadius = 2
        self.btnRegister.layer.borderWidth = 1
        self.btnRegister.layer.backgroundColor = UIColor.orangeColor().CGColor
        self.btnRegister.layer.borderColor = UIColor.orangeColor().CGColor
        
        self.btnLogin.layer.cornerRadius = 2
        self.btnLogin.layer.borderWidth = 1
        self.btnLogin.layer.borderColor = UIColor.orangeColor().CGColor
        
        self.txtUserName.layer.cornerRadius = 2
        self.txtUserName.layer.borderWidth = 1
                self.txtUserName.addAttachment("password.png")
        self.txtUserName.layer.borderColor = UIColor.blackColor().CGColor
        
        self.txtPwd.layer.cornerRadius = 2
        self.txtPwd.layer.borderWidth = 1
        //        self.txtPwd.addAttachment("user.png")
        self.txtPwd.layer.borderColor = UIColor.blackColor().CGColor
        
        
    }
    
    private func addAttachment(image: String){
        
    }
    
    
}

extension UITextField{
    func addAttachment(image: String){
        let attachment = NSTextAttachment()
        attachment.image = UIImage(named: image)
        print("height = \(self.font!.lineHeight), width = \(self.font!.lineHeight) ")
        attachment.bounds = CGRectMake(0, -4, self.font!.lineHeight, self.font!.lineHeight)
        
        // Convert Image to NSAttributedString
        let attStr = NSAttributedString(attachment: attachment)
        //        let mutableStr = NSMutableAttributedString(attributedString: self.attributedText!)
        
        // Get current location of the cursor
        //        let selectedRange = self.selectedRange!
        //        mutableStr.insertAttributedString(attStr, atIndex: self.offsetFromPosition(self.beginningOfDocument, toPosition: selectedRange.end))
        
        //        mutableStr.addAttribute(NSFontAttributeName, value: UIFont.systemFontOfSize(24), range: NSMakeRange(0, mutableStr.length))
        
        //        let newSelectedRange = NSMakeRange(self.offsetFromPosition(self.beginningOfDocument, toPosition: selectedRange.end) + 1, 0)
        
        self.attributedText = attStr
        //        self.selectedTextRange = UITextRange()
    }
}


