/* 
 * Playground for the Ruck 2015
 * Deck of Cards
 */

import UIKit

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "Ace"
        case .Jack:
            return "Jack"
        case .Queen:
            return "Queen"
        case .King:
            return "King"
        default:
            return String(self.rawValue)
        }
    }
}

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return  "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    func suitColour() -> String {
        switch self {
        case .Spades, .Clubs:
            return "Black"
        case .Hearts, .Diamonds:
            return "Red"
        }
    }
}

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

var deckOfCards = [Card]()

for var j=0; j<4; j++
{
    var currentSuit = Suit.Spades
    switch j
    {
    case 0:
        currentSuit = .Spades
    case 1:
        currentSuit = .Hearts
    case 2:
        currentSuit = .Diamonds
    case 3:
        currentSuit = .Clubs
    default:
        break
    }
    
    for var k=0; k<13; k++
    {
        if (Rank(rawValue: (k+1)) != nil)
        {
            var tmpRank = Rank(rawValue: (k+1))
            deckOfCards.append(Card(rank: tmpRank!, suit: currentSuit))
            deckOfCards[((j*13)+k)].simpleDescription()
        }
        else
        {
            break
        }
    }
}


func drawAnyCard() -> String
{
    return "\(deckOfCards[Int(arc4random_uniform(52))].simpleDescription())"
}

func drawCardX(position: Int) -> String
{
    return "\(deckOfCards[position].simpleDescription())"
}

func shuffleDeck()
{
    var tmpNum1:Int
    var tmpNum2:Int
    var tmpCard:Card
    for var i=0;i<104;i++
    {
        tmpNum1 = Int(arc4random_uniform(52))
        tmpNum2 = Int(arc4random_uniform(52))
        tmpCard = deckOfCards[tmpNum2]
        deckOfCards[tmpNum2] = deckOfCards[tmpNum1]
        deckOfCards[tmpNum1] = tmpCard
    }
}

func showDeck()
{
    for var i=0; i<52;i++
    {
        println(deckOfCards[i].simpleDescription())
    }
}
showDeck()
println()
shuffleDeck()
showDeck()





