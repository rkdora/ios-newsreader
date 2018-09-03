//
//  DetailViewController.swift
//  NewsReader
//
//  Created by 河野 瑠斗 on 2018/09/03.
//  Copyright © 2018年 河野 瑠斗. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController : UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    var link:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: self.link) {
            let request = URLRequest(url: url)
            self.webView.load(request)
        }
    }
}
