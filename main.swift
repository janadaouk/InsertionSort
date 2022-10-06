import Foundation

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
//
var array = unsortedIntegers
func swap(integers: inout [Int], firstIndex: Int, secondIndex: Int) {
   
    let temp = integers[firstIndex]
     integers[firstIndex] = integers[secondIndex]
     integers[secondIndex] = temp
}

func sort(array: [Int])    {

    var totalswapcount = 0
    var passcount = 0
    var array = unsortedIntegers
    var swapcountperpass = 0

    print("Pass: \(passcount), Swaps: \(swapcountperpass)/\(totalswapcount), Array: \(unsortedIntegers)")
    for index in 1..<array.count {
        swapcountperpass = 0
        passcount += 1
        let currentIndex = array[index]
        var crntIndex = index
        var previousIndex = index - 1
        while previousIndex>=0 && array[previousIndex] > currentIndex {
            swap(integers: &array, firstIndex: crntIndex, secondIndex: previousIndex)     
            crntIndex -= 1
            previousIndex -= 1
            totalswapcount += 1
            swapcountperpass += 1
        }
        print("Pass: \(passcount), Swaps: \(swapcountperpass)/\(totalswapcount), Array: \(array)")        
    }
}
sort(array: array)
