//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer = AVAudioPlayer()
    var soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
// -------------- function to call a song
    func soundNumber(tagNote: String) {
        do {
            let sound = Bundle.main.url(forResource: tagNote, withExtension: "wav")
            audioPlayer = try AVAudioPlayer(contentsOf: sound!)
            audioPlayer.play()
            
        } catch {
            // couldn't load file :(
            print("error")
        }
    
    }
    
// -------------- function to define the song when input
    @IBAction func notePressed(_ sender: UIButton) {
        
        soundNumber(tagNote: soundArray[sender.tag - 1])
        
        print(soundArray[sender.tag - 1])
    }
}

