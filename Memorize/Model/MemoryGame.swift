//
//  MemoryGame.swift
//  Memorize
//
//  Created by Thiago Rodrigues on 19/03/23.
//

import Foundation


struct MemoryGame<CardContent> {
  var cards: Array<Card>
  
  func Choose(card: Card) {
    print("Card chosen: \(card)")
  }
  
  init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
    cards = Array<Card>()
    for pairIndex in 0..<numberOfPairsOfCards {
      let content = cardContentFactory(pairIndex)
      cards.append(Card(content: content, id: pairIndex*2))
      cards.append(Card(content: content, id: pairIndex*2+1))
    }
  }
  
  struct Card: Identifiable {
    var isFaceUp: Bool = true
    var isMatched: Bool = false
    var content: CardContent
    var id: Int
  }
}
