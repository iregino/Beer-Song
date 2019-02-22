//
//  beerSong.swift
//  Beer Song
//
//  Created by Ian Regino on 2/22/19.
//  Copyright © 2019 Ia Regino. All rights reserved.
//

func beerSong(forThisManyBottlesOfBeer bottlesOfBeer: Int) -> String {
    var lyrics = ""
    
    for num in (1...bottlesOfBeer).reversed() {
        var verse = ""
        if num == 2 {
            verse = """
            \(num) bottles of beer on the wall, \(num) bottles of beer.
            Take one down and pass it around, 1 bottle of beer on the wall. \n\n
            """
        }
        else if num == 1 {
            verse = """
            \(num) bottle of beer on the wall, \(num) bottle of beer.
            Take one down and pass it around, no more bottles of beer on the wall.
            
            No more bottles of beer on the wall, no more bottles of beer.
            Go to the store and buy some more, \(bottlesOfBeer) bottles of beer on the wall.
            """
            lyrics += verse
            break
        }
        verse = """
        \(num) bottles of beer on the wall, \(num) bottles of beer.
        Take one down and pass it around, \(num - 1) bottles of beer on the wall. \n\n
        """
        lyrics += verse
    }
    
    return lyrics
}


