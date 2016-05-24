


//
//  ViewController.swift
//  BanYuanProgress
//
//  Created by wangmengmian on 16/5/11.
//  Copyright © 2016年 wangmengmian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var vie:BanYuanProgress?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.redColor()
        let vie = BanYuanProgress()
      
        vie.frame = CGRectMake(100, 100, 300,300)
        self.vie = vie
        vie.raidus = 100
        vie.linewidth = 13
        vie.lineColor = UIColor.whiteColor()
        vie.progress = 0.8
        vie.backgroundColor = UIColor.yellowColor()
       // vie.bottomLineColor = UIColor.redColor()
   
        self.view.addSubview(vie)
//         vie.progress = 0
//         NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "change", userInfo: nil, repeats: true)
    }
//    func change(){
//        vie?.progress += 0.1
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated. frame:CGRectMake(0, 0, 50, 50)
    }


}

