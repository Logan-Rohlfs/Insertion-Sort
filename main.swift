#!/opt/swift-current/swift
import Swift
var unsortedStrings = [String]()

while let word = readLine() {
    if word == "" {
        break
    } else {
        unsortedStrings.append(word.lowercased())
    }
}


func insertionSort(_ array: [String]) {
    var strings = array
    var pass_total = 0
    var swaps_current = 0
    var swaps_total = 0
    
    //print("Pass: \(pass_total), Swaps: \(swaps_current)/\(swaps_total), Array: \(ints)")
    
    for x in 1..<strings.count {
        var y = x
        let temp = strings[y]
        while y > 0 && temp < strings[y - 1] {
            strings[y] = strings[y - 1]
            y -= 1
            swaps_current += 1
            swaps_total += 1
        }
        strings[y] = temp
        pass_total += 1

        //print("Pass: \(pass_total), Swaps: \(swaps_current)/\(swaps_total), Array: \(ints)")
        
        swaps_current = 0

    }
}

insertionSort(unsortedStrings)
