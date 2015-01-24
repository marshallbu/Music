//
//  ViewController.swift
//  Music
//
//  Created by Marshall Upshur on 1/21/15.
//  Copyright (c) 2015 Marshall Upshur. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func playPressed(sender: AnyObject) {
        player.play()
    }
    
    @IBOutlet weak var volumeSlider: UISlider!
    @IBAction func changeVolume(sender: AnyObject) {
        player.volume = volumeSlider.value
    }
    
    @IBAction func stopPressed(sender: AnyObject) {
        player.stop()
        player.currentTime = 0
    }
    
    @IBAction func pausePressed(sender: AnyObject) {
        player.pause()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var fileLocation = NSString(string: NSBundle.mainBundle().pathForResource("fanfare", ofType: "mp3")!)
        
        var error:NSError? = nil
        
        player = AVAudioPlayer(contentsOfURL: NSURL(string: fileLocation), error: &error)
        
//        player.play()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

