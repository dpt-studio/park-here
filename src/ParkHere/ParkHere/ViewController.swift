//
//  ViewController.swift
//  ParkHere
//
//  Created by Nguyen Quang Ngoc Tan on 3/9/17.
//  Copyright © 2017 Nguyen Quang Ngoc Tan. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    // Demo view controller, will be removed later

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let defaultLocation = CLLocationCoordinate2D(latitude: 10.758599, longitude: 106.681230)
        let camera = GMSCameraPosition.camera(withTarget: defaultLocation, zoom: 16)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = defaultLocation
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
    }

}

