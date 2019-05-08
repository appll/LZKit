//
//  ViewController.swift
//  LZKit
//
//  Created by luzhang316@gmail.com on 05/08/2019.
//  Copyright (c) 2019 luzhang316@gmail.com. All rights reserved.
//

import UIKit
import LZKit

class ViewController: UIViewController {

    var subview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.view.width = 100
//        self.view.x = 10
        subview = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        subview.backgroundColor = UIColor.green
        self.view.addSubview(subview)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        subview.width = 200
        subview.y = 300
    }

}

