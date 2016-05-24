//
//  BanYuanProgress.swift
//  BanYuanProgress
//
//  Created by wangmengmian on 16/5/11.
//  Copyright © 2016年 wangmengmian. All rights reserved.
//

import UIKit

class BanYuanProgress: UIView {
    var raidus:CGFloat?
    var linewidth:CGFloat?
    var lineColor:UIColor?
    var layerL : CAShapeLayer?
    var layer1 :CAShapeLayer?
    var progress:CGFloat?
    var timer:NSTimer?
    var bottomLineColor=UIColor.whiteColor()
    

    override func drawRect(rect: CGRect) {
        self.frame.size.width = 2*self.raidus!+2*self.linewidth!
        self.frame.size.height = self.raidus!+self.linewidth!
        let path = UIBezierPath(arcCenter:CGPointMake(self.frame.size.width/2,self.frame.size.height), radius:self.raidus!, startAngle:CGFloat(-M_PI), endAngle:0 , clockwise: true)
        layerL = CAShapeLayer()
        layerL?.strokeStart = 0
        layerL?.strokeEnd = 1;
        layerL?.frame = self.bounds
        self.layer.addSublayer(layerL!)
        layerL!.backgroundColor = UIColor.clearColor().CGColor
        layerL!.fillColor = UIColor.clearColor().CGColor
        layerL!.strokeColor = UIColor.whiteColor().CGColor
        layerL!.lineWidth = self.linewidth!
        layerL!.path = path.CGPath
//        let cirlepath = UIBezierPath(arcCenter: CGPointMake(<#T##x: CGFloat##CGFloat#>, <#T##y: CGFloat##CGFloat#>), radius: 40, startAngle: 0, endAngle:CGFloat(M_PI)*2, clockwise: true)
        
        let path1 = UIBezierPath(arcCenter: CGPointMake(self.frame.size.width/2,self.frame.size.height), radius: self.raidus!, startAngle:CGFloat(-M_PI), endAngle:0 , clockwise: true)
        let layer1 = CAShapeLayer()
        self.layer1 = layer1
        layer1.frame = self.bounds
        layer1.backgroundColor = UIColor.clearColor().CGColor
        layer1.fillColor = UIColor.clearColor().CGColor
        layer1.strokeColor = UIColor.blueColor().CGColor
        layer1.lineWidth = 13
        layer1.path = path1.CGPath
        layer1.strokeStart = 0
        layer1.strokeEnd = 0
        self.layer.addSublayer(layer1)
           self.backgroundColor = UIColor.clearColor()
      self.timer =  NSTimer.scheduledTimerWithTimeInterval(0.08, target: self, selector: "change", userInfo: nil, repeats: true)
    }
    
    func setBanYuan(){
        
    }
    func change(){
        let add:CGFloat = 0.02
        
        if(self.layer1!.strokeEnd<=self.progress){
            self.layer1!.strokeEnd += add
            
        }else{
            self.timer?.invalidate()
            self.timer = nil
        }
    }
}
