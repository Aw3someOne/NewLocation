//
//  ViewController.swift
//  Location
//
//  Created by Stephen Cheng on 2017-09-29.
//  Copyright © 2017 Stephen Cheng. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    let delegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var latitude: UILabel!
    @IBOutlet weak var longitude: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        delegate.locationManager.requestLocation()
        var coord: CLLocationCoordinate2D!
        coord = delegate.locationManager.location?.coordinate
        if coord != nil {
            latitude.text = "Latitude: \(coord.latitude)"
            longitude.text = "Longitude: \(coord.longitude)"
        } else {
            print("no coordinates")
        }
    }

}

