import UIKit

//var greeting = "Hello, playground"
//print(greeting)
//
//
//let myFloat: Float = 4
//
//let apples = 3
//let oranges = 5
//let appleSummary = "I have \(apples) apples."
//let fruitSummary = "I have \(apples + oranges) pieces of fruit."
//
//let quotation = """
//I said "I have \(apples) apples."
//And then I said "I have \(apples + oranges) pieces of fruit."
//"""

//var shoppingList = ["catfish", "water", "tulips", "blue paint"]
//shoppingList[1] = "bottle of water"
//shoppingList
//
//var occupations = [
//    "Malcolm": "Captain",
//    "Kaylee": "Mechanic",
//]
//occupations["Jayne"] = "Public Relations"
//
//let emptyArray: [String] = []
//let emptyArray1 = [String]()
//
//var optionalString: String? = "Hello"
//print(optionalString == nil)

//var optionalName: String? = nil
//var greeting = "Hello!"
//if let name = optionalName {
//    greeting = "Hello, \(name)"
//} else {
//    greeting = "Hello, nil"
//}
//
//greeting = "Hello \(optionalName ?? "HouRui")"
//
//var optionalVar: String? = nil


//let vegetable = "red pepper"
//switch vegetable {
//case "celery":
//    print("Add some raisins and make ants on a log.")
//case "cucumber", "watercress":
//    print("That would make a good tea sandwich.")
//case let x where x.hasSuffix("pepper"):
//    print("Is it a spicy \(x)?")
//default:
//    print("Everything tastes good in soup.")
//}

//let interestingNumbers = [
//    "Prime": [2, 3, 5, 7, 11, 13],
//    "Fibonacci": [1, 1, 2, 3, 5, 8],
//    "Square": [1, 4, 9, 16, 25],
//]
//var largest = 0
//var largstFont = ""
//for (font, numbers) in interestingNumbers {
//    for num in numbers {
//        if num > largest {
//            largest = num
//            largstFont = font
//        }
//    }
//}
//
//largest
//largstFont
// 输出 "25"

//var n = 2
//
//while n < 100 {
//    n *= 2
//}
//
//var m = 2
//repeat {
//    m *= 2
//} while m < 100

//for i in 1...7 {
//    print(i)
//}

//func greet(person: String, day: String) -> String {
//    return "Hello \(person), today is \(day)"
//}
//
//greet(person: "Bob", day: "Tuesday")

//func greet(_ person: String, _ day: String) -> String {
//    return "Hello \(person), today is \(day)."
//}
//greet("Micheal", "Wednesday")

//func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
//    var min = scores[0]
//    var max = scores[0]
//    var sum = 0
//
//    for score in scores {
//        if score > max {
//            max = score
//        } else if score < min {
//            min = score
//        }
//        sum += score
//    }
//    return (min, max, sum)
//}
//
//let statistics = calculateStatistics(scores: [5,3,100,3,9,6])
//print(statistics.sum)
//print(statistics.1)

//func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
//    for item in list {
//        if condition(item) {
//            return true
//        }
//    }
//    return false
//}
//
//func lessThanTen(_ number: Int) -> Bool {
//    return number < 10
//}
//
//var numbers = [20, 19, 14, 12]
//hasAnyMatches(list: numbers, condition: lessThanTen)
//
//
//numbers.map({
//    //匿名闭包 使用 in 将（函数声明）和（函数体）分离
//    (number: Int) -> Int in
//    if number % 2 != 0 {
//        return 0
//    }
//    return 1
//})
//
//let newNumbers = numbers.map { $0 > 5 }

class Shape {
    var numberOfSides = 0
    let constantProperty = 5
    
    
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
    
    func methodReceiveArg(arg: Int) -> Void {
        print(arg)
    }
}

