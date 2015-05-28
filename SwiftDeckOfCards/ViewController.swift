//
//  ViewController.swift
//  SwiftDeckOfCards
//
//  Created by John Dyer on 18/05/2015.
//  Copyright (c) 2015 John Dyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Pick a new card
    @IBAction func cardButton(sender: AnyObject)
    {
        var tmpString1 = "Test"
        var tmpString2 = "Test"
       cardLabel.text = tmpString1 + " of " + tmpString2
    }
    struct Deck
    {
        var deckPostion: Int
        var cardDes:Card
    }
    struct Suit
    {
        var suitName:String
    }
    struct Card
    {
        var cardNumber:Int
    }
    struct Colour
        
    {
        var suitName:Suit
        var suitColour:String
    }
}

