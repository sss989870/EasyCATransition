//
//  CATransitionExtension.swift
//  KongTech Driving Record
//
//  Created by 김동혁 on 2017. 9. 12..
//  Copyright © 2017년 KongTech. All rights reserved.
//

import UIKit

enum CATransitionType {
    case reveal
    case push
    case fade
    case moveIn
}

enum CAMediaTimingFunctionType {
    case linear
    case easeIn
    case easeOut
    case easeInEaseOut
    case `default`
}

enum CATransitionFrom {
    case right
    case left
    case top
    case bottom
}

extension CATransition {
    
    convenience init(type: CATransitionType, mediaTimingFunction: CAMediaTimingFunctionType, from: CATransitionFrom, duration: CFTimeInterval) {
        self.init()
        
        switch type {
        case .reveal:
            self.type = kCATransitionReveal
        case .push:
            self.type = kCATransitionPush
        case .fade:
            self.type = kCATransitionFade
        case .moveIn:
            self.type = kCATransitionMoveIn
        }
        
        switch mediaTimingFunction {
        case .default:
            self.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
        case .easeIn:
            self.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
        case .easeOut:
            self.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        case .easeInEaseOut:
            self.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        case .linear:
            self.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        }
        
        switch from {
        case .right:
            self.subtype = kCATransitionFromRight
        case .left:
            self.subtype = kCATransitionFromLeft
        case .top:
            self.subtype = kCATransitionFromTop
        case .bottom:
            self.subtype = kCATransitionFromBottom
        }
        
        self.duration = duration
    }
}
