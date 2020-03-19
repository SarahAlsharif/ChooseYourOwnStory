//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    var title : String
    var choiceOne : String
    var choiceTwo : String
    var choice1Dis : Int
    var choice2Dis : Int
    
    init (title: String,choice1 : String,choice1Destination : Int ,choice2 : String, choice2Destination : Int){
        self.title = title
        choiceOne = choice1
        choiceTwo = choice2
        choice1Dis = choice1Destination
        choice2Dis = choice2Destination
    }
}
