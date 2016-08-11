//
//  ViewController.swift
//  Shake It Baby
//
//  Created by Ignacio Lasaosa Sáez on 11/8/16.
//  Copyright © 2016 Ignacio Lasaosa Sáez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()
    
    var sounds = ["bean", "belch", "giggle", "pew", "pig", "snore", "static", "uuu"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        
        if event?.subtype == UIEventSubtype.MotionShake {
            
            print("Device was shaken")
            
            let fileLocation = NSBundle.mainBundle().pathForResource("bean", ofType: "mp3")
            
            do {
                
                try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: fileLocation!))
                
                player.play()
            
            } catch {}
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

