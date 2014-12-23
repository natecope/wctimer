//
//  InterfaceController.swift
//  wctimer WatchKit Extension
//
//  Created by Nathan Cope on 12/22/14.
//  Copyright (c) 2014 PlumChoice Inc. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var watchTimer: WKInterfaceTimer!
    
    var internalTimer:NSTimer?
    var duration: NSTimeInterval = 60.0 * 3.0 //number of seconds (3 minutes)
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func startButtonPressed() {
        
        println("Start!");
        watchTimer.setDate(NSDate(timeIntervalSinceNow: duration))
        watchTimer.start();
        internalTimer = NSTimer.scheduledTimerWithTimeInterval(duration, target: self, selector: Selector("timeDone:"), userInfo: nil, repeats: false);
    }
    
    func timeDone(timer:NSTimer){
        println("Done!")
    }
}
