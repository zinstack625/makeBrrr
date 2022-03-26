//
//  ViewController.swift
//  makeBrrr
//
//  Created by Anton on 25.03.2022.
//

import Cocoa

class ViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func makeBrrr(segue: NSStoryboardSegue) {
        Thread.detachNewThread {
            var j = 0;
            switch Int.random(in: 0...6) {
                case 1: j = 1000
                case 2: j = 10
                default: j = 0
            }
            let vibr = NSHapticFeedbackManager.defaultPerformer
            for _ in 0...j {
                vibr.perform(NSHapticFeedbackManager.FeedbackPattern.generic, performanceTime:  NSHapticFeedbackManager.PerformanceTime.now)
                Thread.sleep(forTimeInterval: 0.02)
            }
        }
        performSegue(withIdentifier: "showCat", sender: self)
    }
    @IBAction func makeBrrrv2(segue: NSStoryboardSegue) {
        Thread.detachNewThread {
            let vibr = NSHapticFeedbackManager.defaultPerformer
            for _ in 0...50 {
                vibr.perform(NSHapticFeedbackManager.FeedbackPattern.generic, performanceTime:     NSHapticFeedbackManager.PerformanceTime.now)
                Thread.sleep(forTimeInterval: 0.05)
            }
        }
        performSegue(withIdentifier: "showCat", sender: self)
    }
}

