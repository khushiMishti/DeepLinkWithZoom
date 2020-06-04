//
//  ViewController.swift
//  linkZoom
//
//  Created by Nishant Pandey on 30/05/20.
//  Copyright © 2020 amazingVariable. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

     let kcustomURLScheme = "zoomus://zoom.us/join?confno=75203113109&pwd=3sxp9U"
    //"zoomus://"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    
    @IBAction func GoToZoom(_ sender: Any) {
        
        //openCustomApp()
        let customURL = URL(string: kcustomURLScheme)!
        if UIApplication.shared.canOpenURL(customURL)
        {
            if #available(iOS 10.0, *)
            {
                UIApplication.shared.open(customURL)
            }
            else
            {
                UIApplication.shared.openURL(customURL)
            }
        }
            
        else
        {
            UIApplication.shared.open(URL(string: "https://apps.apple.com/us/app/zoom-cloud-meetings/id546505307")!)
        }
    
    }
    

}

