//
//  LocationManager.swift
//  Map
//
//  Created by Student on 03.02.2022.
//

import Foundation
import CoreLocation

class ClassForLocationMap: NSObject, CLLocationManagerDelegate{
    //Менеджер, у которого есть набор функций
    var locationManager = CLLocationManager()
    //Наша локация
    var location: CLLocation? = nil
    
    override init(){
        super.init()
        locationManager.delegate = self
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.distanceFilter = kCLDistanceFilterNone
//        locationManager.headingFilter = kCLHeadingFilterNone
        locationManager.requestWhenInUseAuthorization()
    }
    

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {
            return
        }
        self.location = location
    }
}
