//
//  ViewController.swift
//  mt-mapapp
//
//  Created by Julia on 2016/12/03.
//
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myMap: MKMapView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Setup latitude and longitude
        let location = CLLocationCoordinate2DMake(49.28061, -123.122463)
//        myMap.setCenter(location,animated: true)
        myMap.setCenterCoordinate(location, animated: true)
        
        // Setup a reduced scale
        var region = myMap.region
        region.center = location
        region.span.latitudeDelta = 0.02
        region.span.longitudeDelta = 0.02
        myMap.setRegion(region,animated:true)
        
        // Specify the type of map to display
        myMap.mapType = MKMapType.Standard
        //        myMap.mapType = MKMapType.satellite
        //        myMap.mapType = MKMapType.hybrid
        //        myMap.mapType = MKMapType.satelliteFlyover
        //        myMap.mapType = MKMapType.hybridFlyover
        
        // You can set an annotation object if you like to say something about the location
        let pin = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2DMake(49.28061, -123.122463)
        pin.title = "iOS Development Meetup for Beginner"
        pin.subtitle = " We will make an simple map app @ Waves Cofee!"
        myMap.addAnnotation(pin)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}

