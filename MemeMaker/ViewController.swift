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
    @IBOutlet weak var mainImageView: UIImageView!
    var topChoices = [CaptionOption]()
    var bottomChoices: [CaptionOption] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTopSegmentControl()
        configureBottomSegmentControl()
        selectInitValues()
    
        // Do any additional setup after loading the view.
    }

    func configureTopSegmentControl() {
        topCaptionSegmentControl.removeAllSegments()
        let optionOne = CaptionOption(emoji: "☕️", text: "You know what's cool?", imageName: "coffe")
        let optionTwo = CaptionOption(emoji: "💥", text: "You know what makes me mad?", imageName: "explosion")
        let optionThree = CaptionOption(emoji: "🦅", text: "You know what I love?", imageName: "Raven")
        topChoices = [optionOne, optionTwo, optionThree]
        
        for choice in topChoices {
            topCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)

        }
        
    }
    func configureBottomSegmentControl() {
        bottomCaptionSegmentControl.removeAllSegments()
        let optionOne = CaptionOption(emoji: "😺", text: "Cats wearing hats", imageName: "cat")
        let optionTwo = CaptionOption(emoji: "🐕", text: "Dogs carrying logs", imageName: "dog")
        let optionThree = CaptionOption(emoji: "🐒", text: "Monkeys being funky", imageName: "monkey")
        bottomChoices = [optionOne, optionTwo, optionThree]
        
        for choice in bottomChoices {
            bottomCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        
    }
    
    func selectInitValues() {
        topCaptionSegmentControl.selectedSegmentIndex = 0
        bottomCaptionSegmentControl.selectedSegmentIndex = 0
        topLabel.text = topChoices.first?.text
        bottomLabel.text = bottomChoices.first?.text
        mainImageView.image = UIImage(named: "eagle")
        
    }

    @IBAction func topSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = topChoices[sender.selectedSegmentIndex]
        topLabel.text = currentChoice.text
        mainImageView.image = UIImage(named: currentChoice.imageName)
    }
    @IBAction func bottomSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = bottomChoices[sender.selectedSegmentIndex]
        bottomLabel.text = currentChoice.text
        mainImageView.image = UIImage(named: currentChoice.imageName)
    }
}

