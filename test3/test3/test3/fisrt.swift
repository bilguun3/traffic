//
//  fisrt.swift
//  test3
//
//  Created by UMLab-002 on 4/14/15.
//  Copyright (c) 2015 UniLabo. All rights reserved.
//

import UIKit

import CoreLocation



class first: UIViewController,CLLocationManagerDelegate {
    
    
    
    @IBOutlet var l1: UILabel!
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    let locationManager = CLLocationManager()
    
    let region = CLBeaconRegion(proximityUUID: NSUUID(UUIDString: "1AE18C1C-6C7B-4AED-B166-4462634DA855"), identifier: "Estimotes")
    
    let colors = [
        
        1: UIColor(red: 84/255, green: 77/255, blue: 160/255, alpha: 1),
        
        2: UIColor(red: 142/255, green: 212/255, blue: 220/255, alpha: 1)
        
        //3: UIColor(red: 162/255, green: 213/255, blue: 181/255, alpha: 1)
        
    ]
    
    var iImage = ["1.jpg","2.jpg" ]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        l1.hidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.delegate = self
        
        if (CLLocationManager.authorizationStatus() != CLAuthorizationStatus.AuthorizedWhenInUse) {
            
            locationManager.requestWhenInUseAuthorization()
            
        }
        
        locationManager.startRangingBeaconsInRegion(region)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    
    
    func locationManager(manager: CLLocationManager!, didRangeBeacons beacons: [AnyObject]!, inRegion region: CLBeaconRegion!) {
        
        
        
        //println(beacons)
        
        
        
        let knownBeacons = beacons.filter{ $0.proximity != CLProximity.Immediate }
        
        if (knownBeacons.count > 0) {
            
            let closestBeacon = knownBeacons[0] as CLBeacon
            
            //self.view.backgroundColor = self.colors[closestBeacon.minor.integerValue]
            
            //self.myLabel.text = String()
            
            //closestBeacon.proximityUUID
            
            // myLabel.text = String(closestBeacon.minor.integerValue)
            
            if(closestBeacon.minor.integerValue == 1)
                
            {
                
                imageView.image = UIImage(named: "1.jpg")
                
                l1.hidden = false
                
                l1.text = "Халитаргаат зам"
                
            }else if (closestBeacon.minor.integerValue == 2)
                
            {
                
                imageView.image = UIImage(named: "2.jpg")
                
                l1.hidden = false
                
                l1.text = "Засварын ажил"
                
            }
            
        }
            
        else{
            
            //myLabel.text = "NULL"
            
        }
        
    }
    
}


