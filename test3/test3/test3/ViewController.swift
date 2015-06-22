//
//  ViewController.swift
//  test3
//
//  Created by UMLab-002 on 4/14/15.
//  Copyright (c) 2015 UniLabo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var iImage = ["1.jpg","2.jpg","3.jpg" ]
    
    @IBOutlet weak var backImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backImage.image = UIImage(named: "3.jpg")
    }        // Do any additional setup after loading the view, typically from a nib.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

