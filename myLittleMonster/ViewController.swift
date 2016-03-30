//
//  ViewController.swift
//  myLittleMonster
//
//  Created by Gabe at Work on 3/30/16.
//  Copyright © 2016 Gabe Hoffman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imageArray: [UIImage] = []
        for x in 1...4 {
            imageArray.append(UIImage(named: "idle\(x).png")!)
        }
        
        monsterImg.animationImages = imageArray
        monsterImg.animationDuration = 0.8
        monsterImg.animationRepeatCount = 0
        monsterImg.startAnimating()
    }

}

