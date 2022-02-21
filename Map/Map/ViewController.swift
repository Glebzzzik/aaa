//
//  ViewController.swift
//  Map
//
//  Created by Student on 03.02.2022.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    
    let locationManager = ClassForLocationMap()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print(locationManager.location ?? "nil")
        setupMap()
    }

    func setupMap(){
        
        map.region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.4, longitude: 54.4), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
        map.showsUserLocation = true
        
    }

}

