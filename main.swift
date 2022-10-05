import Swift
// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

// Add your code below:

func insertionSort(_ array: [Int]) {
    var ints = array
    var pass_total = 0
    var swaps_current = 0
    var swaps_total = 0
    
    print("Pass: \(pass_total), Swaps: \(swaps_current)/\(swaps_total), Array: \(ints)")
    
    for x in 1..<ints.count {
        var y = x
        let temp = ints[y]
        while y > 0 && temp < ints[y - 1] {
            ints[y] = ints[y - 1]
            y -= 1
            swaps_current += 1
            swaps_total += 1
        }
        ints[y] = temp
        pass_total += 1

        print("Pass: \(pass_total), Swaps: \(swaps_current)/\(swaps_total), Array: \(ints)")
        
        swaps_current = 0

    }
}

insertionSort(unsortedIntegers)
