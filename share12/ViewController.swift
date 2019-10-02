//
//  ViewController.swift
//  share12
//
//  Created by Steven Masuch on 2019-09-23.
//  Copyright © 2019 Steven Masuch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var controller: UIDocumentInteractionController?
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareIGOfile() {
        if let URL = Bundle.main.url(forResource: "11378", withExtension: "igo") {
            controller  = UIDocumentInteractionController(url: URL)
            controller?.uti = "com.instagram.exclusivegram"
            controller?.presentOpenInMenu(from: button.frame, in: self.view, animated: true)
        }
    }
    
    @IBAction func shareIGfile() {
        if let URL = Bundle.main.url(forResource: "11378", withExtension: "ig") {
            controller  = UIDocumentInteractionController(url: URL)
            controller?.uti = "com.instagram.photo"
            controller?.presentOpenInMenu(from: button.frame, in: self.view, animated: true)
        }
    }
    
    @IBAction func shareJPEGfile() {
        if let URL = Bundle.main.url(forResource: "IMG_4866", withExtension: "jpeg") {
            controller  = UIDocumentInteractionController(url: URL)
            controller?.uti = "public.jpeg"
            controller?.presentOpenInMenu(from: button.frame, in: self.view, animated: true)
        }
    }
}
