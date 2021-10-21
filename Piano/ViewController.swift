//
//  ViewController.swift
//  Piano
//
//  Created by 俞佳兴 on 2020/7/22.
//  Copyright © 2020 yjx. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBAction func soundButtonTapped(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
    }
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

