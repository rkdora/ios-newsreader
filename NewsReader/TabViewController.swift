//
//  TabViewController.swift
//  NewsReader
//
//  Created by 河野 瑠斗 on 2018/09/04.
//  Copyright © 2018年 河野 瑠斗. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class TabViewController: UIViewController {
    
    var tabName: IndicatorInfo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension TabViewController: IndicatorInfoProvider {
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return tabName
    }
}
