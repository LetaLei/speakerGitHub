//
//  ViewController.swift
//  class6
//
//  Created by max on 2020/8/11.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    

    @IBOutlet weak var songTextField: UITextField!
    @IBOutlet weak var rateSlider: UISlider!
    @IBOutlet weak var voiceTypeSlide: UISlider!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var voiceTypeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func speek(_ sender: Any) {
        let utterance = AVSpeechUtterance(string:songTextField.text!)
        utterance.rate = rateSlider.value
        utterance.pitchMultiplier = voiceTypeSlide.value
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
        
    }
    @IBAction func changRate(_ sender: Any) {
        rateLabel.text = String(format: "%.2f",rateSlider.value)
    }
    
    @IBAction func changVoiceType(_ sender: Any) {
        voiceTypeLabel.text = String(format: "%.2f",voiceTypeSlide.value)
    }
}

