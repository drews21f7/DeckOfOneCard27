//
//  CardViewController.swift
//  DeckOfOneCard27
//
//  Created by Drew Seeholzer on 6/24/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {

    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var suitLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var codeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func drawButtonTapped(_ sender: Any) {
        CardController.drawCard { (card) in
            if let card = card {
                CardController.getImageFor(card: card, completion: { (image) in
                    if let image = image {
                        DispatchQueue.main.async {
                            self.cardImageView.image = image
                            self.suitLabel.text = card.suit
                            self.valueLabel.text = card.value
                            self.codeLabel.text = card.code
                        }
                    } 
                })
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
