//
//  ViewController.swift
//  ChooseYourOwnStory
//
//  Created by Sarah Alsharif on 3/19/20.
//  Copyright © 2020 Raqmia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiseOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    
    var storyBrain = StoryBrain()
    
//    let story = ["You See a fork in the road", "You see a tiger", "You find a treasure chest"]
//    let choices1 = ["Take a left", "Shout for help", "open it"]
//    let choices2 = ["Take a right", "Play dead", "Check for traps"]
//    var array : [[String]]?
   // var index = 0
    
//    var s0 = Story("You See a fork in the road", "Take a left", "Take a right")
//    var s1 = Story("You see a tiger", "Shout for help", "Play dead")
//    var s2 = Story("You find a treasure chest", "open it", "Check for traps")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        storyLabel.text = "You see a fork in the road"
        choiseOne.setTitle("Take a left", for: .normal)
        choiceTwo.setTitle("Take a right", for: .normal)
    }

    
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        storyBrain.nexStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getTitle()
        choiseOne.setTitle(storyBrain.getChoiceOne(), for: .normal)
        choiceTwo.setTitle(storyBrain.getChoiceTwo(), for: .normal)
    }
}

