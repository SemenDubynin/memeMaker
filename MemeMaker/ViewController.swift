//
//  ViewController.swift
//  MemeMaker
//
//  Created by Дубынин Семён on 10.06.2020.
//  Copyright © 2020 Дубынин Семён. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topCaptionSegmentControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentControl: UISegmentedControl!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    var topChoices = [CaptionOption]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTopSegmentControl()
    
        // Do any additional setup after loading the view.
    }

    func configureTopSegmentControl() {
        topCaptionSegmentControl.removeAllSegments()
        let optionOne = CaptionOption(emoji: "🕶", text: "You know what's cool?")
        let optionTwo = CaptionOption(emoji: "💥", text: "You know what makes me mad?")
        let optionThree = CaptionOption(emoji: "💕", text: "You know what I love?")
        topChoices = [optionOne, optionTwo, optionThree]
        
        for choice in topChoices {
            topCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        
    }

    @IBAction func topSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = topChoices[sender.selectedSegmentIndex]
        topLabel.text = currentChoice.text
    }
}

