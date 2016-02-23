//
//  ViewController.swift
//  InterestingFacts
//
//  Created by Alexander Nelson on 2/23/16.
//  Copyright © 2016 Jetwolfe Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var interestingFactLabel: UILabel!
    @IBOutlet weak var interestingFactButton: UIButton!
    let fact = Fact()

    override func viewDidLoad() {
        super.viewDidLoad()
        interestingFactLabel.text = fact.getRandomFact()
    }

    @IBAction func showInterestingFact(sender: UIButton) {
        let randomColor = Color().getRandomColor()
        view.backgroundColor = randomColor
        interestingFactButton.tintColor = randomColor
        interestingFactLabel.text = fact.getRandomFact()
    }
}