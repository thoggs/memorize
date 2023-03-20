//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Thiago Rodrigues on 19/03/23.
//

import SwiftUI


class EmojiMemoryGame {
  private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
  
  static func createMemoryGame() -> MemoryGame<String> {
    let emojis: Array<String> = ["👻", "🎃", "🕷️"]
    return MemoryGame<String>(numberOfPairsOfCards: emojis.count) {pairIndex in
      return emojis[pairIndex]
    }
  }
  
  // MARK: Access to the model
  var cards: Array<MemoryGame<String>.Card> {
    return model.cards
  }
  
  // MARK: - Intent(s)
  func Choose(card: MemoryGame<String>.Card) {
    model.Choose(card: card)
  }
}
