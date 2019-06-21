//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Raaghav Goel on 6/1/19.
//  Copyright © 2019 Raaghav Goel. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let htmlPath = Bundle.main.path(forResource: "BullsEye", ofType: "html") {
            let url = URL(fileURLWithPath: htmlPath)
            let request = URLRequest(url: url)
            webView.load(request)
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }

}
