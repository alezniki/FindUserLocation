//
//  ViewController.swift
//  FIndUserLocation
//
//  Created by nikola on 1/4/17.
//  Copyright © 2017 nikola. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

	@IBOutlet var map: MKMapView!
	@IBOutlet weak var lblPlacemarks: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

