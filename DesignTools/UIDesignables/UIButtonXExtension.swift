//
//  UIButtonExtension.swift
//  DesignTools
//
//  Created by Sean on 10/8/17.
//  Copyright © 2017 Sean Ippolito. All rights reserved.
//

import Foundation
import UIKit

extension UIButtonX {
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.7
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 5
        pulse.initialVelocity = 0.7
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: nil)
    }
    
    func flash() {
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.5
        flash.fromValue = 1
        flash.toValue = 0
        flash.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 5
        
        layer.add(flash, forKey: nil)
    }
    
    func shake() {
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 5
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x - 20, y: center.y - 20)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 20, y: center.y + 20)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        layer.add(shake, forKey: nil)
    }
}
