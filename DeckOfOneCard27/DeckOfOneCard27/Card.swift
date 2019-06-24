//
//  Card.swift
//  DeckOfOneCard27
//
//  Created by Drew Seeholzer on 6/24/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import Foundation

class Card: Codable {
    let suit: String
    let value: String
    let code: String
    let image: String
    
    init(suit: String, value: String, code: String, image: String) {
        self.suit = suit
        self.value = value
        self.code = code
        self.image = image
    }
}



