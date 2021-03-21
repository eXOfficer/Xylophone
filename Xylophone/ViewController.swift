//
//  ViewController.swift
//  Xylophone
//
//  Created by Adnan Sarker on 21/03/2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        //print ("I Got Pressed")
        let x = sender.currentTitle!
        playSound(soundName: x)
        //print ("ok, I played  ", x)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }

}

