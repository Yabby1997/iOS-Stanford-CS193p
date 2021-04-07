//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Seunghun Yang on 2021/04/07.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🥲", "🙂", "😀"]
        return MemoryGame<String>(numberOfPairsOfCards: 3) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intents
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
