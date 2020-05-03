
//
//  TetrisGameModel.swift
//  Tetris
//
//  Created by Dzulis on 2020-05-03.
//  Copyright © 2020 Dzulis. All rights reserved.
//

import SwiftUI

class TetrisGameViewModel: ObservableObject {
    var numberRows: Int
    var numberColumns: Int
    @Published var gameBoard:[[TetrisGameSquare]]
    
    init(numberRows: Int = 23, numberColumns: Int = 12){
        self.numberRows = numberRows
        self.numberColumns = numberColumns
        
        gameBoard = Array(repeating: Array(repeating: TetrisGameSquare(color: Color.tetrisBlack), count: numberRows), count: numberColumns)
    }
    func squareClicked(row: Int, column:Int) {
        print("Column: \(column), Row: \(row)")
        if gameBoard[column][row].color == Color.tetrisBlack {
            gameBoard[column][row].color = Color.tetrisRed
        } else {
            gameBoard[column][row].color = Color.tetrisBlack
        }
    }
}

struct TetrisGameSquare {
    var color: Color
}
