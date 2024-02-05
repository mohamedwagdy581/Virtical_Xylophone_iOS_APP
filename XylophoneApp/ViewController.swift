//
//  ViewController.swift
//  XylophoneApp
//
//  Created by Mohamed Wagdy on 05/02/2024.
//

import UIKit
import AudioToolbox
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer: AVAudioPlayer!
    let soundArrary = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundFileName: soundArrary[sender.tag - 1])
    }
    
    func playSound(soundFileName: String)
    {
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do
        {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch
        {
            print(error)
        }
        
        audioPlayer.play()
    }
    
    
}




