//
//  MonsterImg.swift
//  myLittleMonster
//
//  Created by Gabe at Work on 3/30/16.
//  Copyright © 2016 Gabe Hoffman. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        playIdleAnimation()
    }
    
    func playIdleAnimation() {
        self.image = UIImage(named: "idle1.png")
        
        self.animationImages = nil
        
        var imageArray: [UIImage] = []
        for x in 1...4 {
            imageArray.append(UIImage(named: "idle\(x).png")!)
        }
        
        self.animationImages = imageArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
    }
    
    func playDeathAnimation() {
        
        self.image = UIImage(named: "dead5.png")
        
        self.animationImages = nil
        
        var imageArray: [UIImage] = []
        for x in 1...5 {
            imageArray.append(UIImage(named: "dead\(x).png")!)
        }
        
        self.animationImages = imageArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
    }
}