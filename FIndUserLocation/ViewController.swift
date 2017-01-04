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
	
	var mng = CLLocationManager()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		mng.delegate = self // allows ViewController to controlls the locationManager
		mng.desiredAccuracy = kCLLocationAccuracyBest // for best accuracy
		mng.requestWhenInUseAuthorization() // request user location
		mng.startUpdatingLocation() // start monitoring location when app in use
	}
	

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// didUpdateLocations: to get the user location
	func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
		print(locations)
	}
}

