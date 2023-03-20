//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Thiago Rodrigues on 19/03/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
  let game = EmojiMemoryGame()
  
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
