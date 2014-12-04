//
//  NotificationController.swift
//  WatchNotifications WatchKit Extension
//
//  Created by Anindya Sengupta on 03/12/2014.
//  Copyright (c) 2014 Anindya Sengupta. All rights reserved.
//

import WatchKit
import Foundation


class NotificationController: WKUserNotificationInterfaceController {

    override func didReceiveRemoteNotification(remoteNotification: [NSObject : AnyObject], withCompletion completionHandler: ((WKUserNotificationInterfaceType) -> Void)) {
        
        // Tell WatchKit to display the custom interface.
        completionHandler(.Custom);
    }
    
    override func didReceiveLocalNotification(localNotification: UILocalNotification, withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void) {
        <#code#>
    }

}


