//
//  ViewController.swift
//  map
//
//  Created by Vyom Unadkat on 29/08/17.
//  Copyright © 2017 Vyom Unadkat. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let latitude: CLLocationDegrees = 34.0224
        
        let longitude: CLLocationDegrees = -118.2851
        
        let latdelta: CLLocationDegrees = 0.05
        
        let longdelta: CLLocationDegrees = 0.05
        
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latdelta, longitudeDelta: longdelta)
        
        let coordinate: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let region: MKCoordinateRegion = MKCoordinateRegion(center: coordinate, span: span)
        
        map.setRegion(region, animated: true)
        
        
        let annotation = MKPointAnnotation()
        
        annotation.title = "The United States America"
        
        annotation.subtitle = "Been here"
        
        annotation.coordinate = coordinate
        
        map.addAnnotation(annotation)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

