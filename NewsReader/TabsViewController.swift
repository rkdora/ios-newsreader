//
//  TabsViewController.swift
//  NewsReader
//
//  Created by 河野 瑠斗 on 2018/09/04.
//  Copyright © 2018年 河野 瑠斗. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class TabsViewController: ButtonBarPagerTabStripViewController {
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        var vcs: [UIViewController] = []
        let tabTitle = [1: "ニュース", 2: "スポーツ", 3: "エンタメ",4: "IT"]
        for tabNum in 1...4 {
            let table =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tab") as! TabViewController
            table.tabName = IndicatorInfo(title: tabTitle[tabNum])
            vcs.append(table)
        }
        
        /*
        let table1 =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tab") as! TabViewController
        table1.tabName = "Tab1"
        vcs.append(table1)
        let table2 =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tab") as! TabViewController
        table2.tabName = "Tab2"
        vcs.append(table2)
        */
        return vcs
    }
    
    override func viewDidLoad() {
        // タブの背景色
        settings.style.buttonBarBackgroundColor = UIColor.lightGray
        // タブの色
        settings.style.buttonBarItemBackgroundColor = UIColor.lightGray
        // タブの文字サイズ
        settings.style.buttonBarItemFont = UIFont.systemFont(ofSize: 15)
        // カーソルの色
        buttonBarView.selectedBar.backgroundColor = UIColor.darkGray
        super.viewDidLoad()
    }
}


