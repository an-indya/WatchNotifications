//
//  InterfaceController.swift
//  WatchNotifications WatchKit Extension
//
//  Created by Anindya Sengupta on 03/12/2014.
//  Copyright (c) 2014 Anindya Sengupta. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var dateLabel: WKInterfaceDate!
    override func handleActionWithIdentifier(identifier: String?, forRemoteNotification remoteNotification: [NSObject : AnyObject]) {
        
        if let id = identifier {
            if id == "firstButtonAction" {
                
                var plistKeys: NSDictionary?
                var timeZones: NSDictionary?
                
                if let path = NSBundle.mainBundle().pathForResource("Timezones", ofType: "plist") {
                    plistKeys = NSDictionary(contentsOfFile: path)!
                    timeZones = plistKeys!["TimeZones"] as NSDictionary?
                }
                
                if let dict = timeZones {
                    NSLog("%@", dict.valueForKey("Tokyo") as String)
                    dateLabel.setTimeZone(NSTimeZone(name: dict.valueForKey("Tokyo") as String))
                }
                
                
            }
        }
        
    }

}
