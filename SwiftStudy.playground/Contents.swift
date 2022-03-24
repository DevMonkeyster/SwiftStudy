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

//class Shape {
//    var numberOfSides = 0
//    let constantProperty = 5
//
//
//
//    func simpleDescription() -> String {
//        return "A shape with \(numberOfSides) sides"
//    }
//
//    func methodReceiveArg(arg: Int) -> Void {
//        print(arg)
//    }
//}

//enum Rank: Int {
//    case ace = 1
//    case two, three, four, five, six, seven, eight, nine, ten
//    case jack, queen, king
//    func simpleDescription() -> String {
//        switch self {
//        case .ace:
//            return "ace"
//        case .jack:
//            return "jack"
//        case .queen:
//            return "queen"
//        case .king:
//            return "king"
//        default:
//            return String(self.rawValue)
//        }
//    }
//
//    func compareFunc(val0: Rank, val1: Rank) -> Bool {
//        return val0.rawValue > val1.rawValue
//    }
//}
//
//let ace = Rank.ace
//ace.simpleDescription()
//let aceRawValue = ace.rawValue
//let result = ace.compareFunc(val0: Rank.queen, val1: Rank.jack)

//enum Suit {
//    case spades, hearts, diamonds, clubs
//    func simpleDescription() -> String {
//        switch self {
//        case .spades:
//            return "spades"
//        case .hearts:
//            return "hearts"
//        case .diamonds:
//            return "diamonds"
//        case .clubs:
//            return "clubs"
//        }
//    }
//
//    func color() -> String {
//        switch self {
//        case .spades:
//            return "black"
//        case .hearts:
//            return "red"
//        case .diamonds:
//            return "red"
//        case .clubs:
//            return "black"
//        }
//    }
//}
//
//let hearts = Suit.hearts
//let heartsDescription = hearts.simpleDescription()
//hearts.color()
//
//enum ServerResponse {
//    case result(String, String)
//    case failure(String)
//}
//
//let success = ServerResponse.result("6:00 am", "8:09 pm")
//let failure = ServerResponse.failure("Out of cheese.")
//
//switch failure {
//case let .result(sunrise, sunset):
//    print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
//case let .failure(message):
//    print("Failure...  \(message)")
//}


//protocol ExampleProtocol {
//    var simpleDescription: String { get }
//    mutating func adjust()
//    mutating func moreAdjust()
//}
//
//
//class SimpleClass: ExampleProtocol {
//    func moreAdjust() {
//        print(simpleDescription)
//    }
//
//    var simpleDescription: String = "A very simple class."
//    var anotherProperty: Int = 69105
//    func adjust() {
//        simpleDescription += "  Now 100% adjusted."
//    }
//}
//var a = SimpleClass()
//a.adjust()
//a.moreAdjust()
//let aDescription = a.simpleDescription
//
//struct SimpleStructure: ExampleProtocol {
//    func moreAdjust() {
//        print(simpleDescription)
//    }
//    var simpleDescription: String = "A simple structure"
//    mutating func adjust() {
//        simpleDescription += " (adjusted)"
//    }
//}
//var b = SimpleStructure()
//b.adjust()
//b.moreAdjust()
//
//let bDescription = b.simpleDescription
//
//extension Double: ExampleProtocol {
//    var simpleDescription: String {
//        return "The number \(self)"
//    }
//
//    mutating func adjust() {
//
//    }
//
//    mutating func moreAdjust() {
//    }
//}
//
//var dou = 2.5
//dou.simpleDescription


//class Bank {
//
//    var account: [Int]
//
//    init(_ balance: [Int]) {
//        self.account = balance
//    }
//
//    func checkAccount(_ accountIndex: Int) -> Bool {
//        return accountIndex >= 0 && accountIndex <= self.account.count - 1
//    }
//
//    func transfer(_ account1: Int, _ account2: Int, _ money: Int) -> Bool {
//        if checkAccount(account1-1) == false || checkAccount(account2-1) == false {
//            return false
//        }
//        if self.account[account1-1] < money {
//            return false
//        }
//        self.account[account1-1] -= money
//        self.account[account2-1] += money
//        return true
//    }
//
//    func deposit(_ account: Int, _ money: Int) -> Bool {
//        if checkAccount(account-1) == false{
//            return false
//        }
//
//        self.account[account-1] += money
//        return true
//    }
//
//    func withdraw(_ account: Int, _ money: Int) -> Bool {
//        if checkAccount(account-1) == false{
//            return false
//        }
//        if self.account[account-1] < money {
//            return false
//        }
//        self.account[account-1] -= money
//        return true
//    }
//}


//public class TreeNode {
//    public var val: Int
//    public var left: TreeNode?
//    public var right: TreeNode?
//    public init() { self.val = 0; self.left = nil; self.right = nil; }
//    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
//    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
//        self.val = val
//        self.left = left
//        self.right = right
//    }
//}
//
//class Solution {
//    func tree2str(_ root: TreeNode?) -> String {
//        if root!.left == nil && root!.right == nil { return "\(root!.val)" }
//
//        var left, right: String
//
//        if root!.left == nil && root!.right != nil {
//            right = "(\(tree2str(root!.right)))"
//            left = "()"
//        }else if root!.left != nil && root!.right == nil {
//            left = "(\(tree2str(root!.left)))"
//            right = "()"
//        }else {
//            left = "(\(tree2str(root!.left)))"
//            right = "(\(tree2str(root!.right)))"
//        }
//        return "\(root!.val)\(left)\(right)"
//    }
//}

/**
  Definition for a binary tree node.
  */
//public class TreeNode {
//    public var val: Int
//    public var left: TreeNode?
//    public var right: TreeNode?
//    public init() { self.val = 0; self.left = nil; self.right = nil; }
//    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
//    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
//        self.val = val
//        self.left = left
//        self.right = right
//    }
//}
//
//class Solution {
//    var treeValue = Set<Int> ()
//    var findTree = false
//    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
//        func findTreeValue(_ tree: TreeNode?) -> Void {
//            if tree == nil { return }
//            treeValue.insert(tree!.val)
//
//            if treeValue.contains(k - tree!.val) && (k - tree!.val != tree!.val) {
//                findTree = true
//            }
//
//            findTreeValue(tree!.left)
//            findTreeValue(tree!.right)
//        }
//
//        findTreeValue(root)
//        return findTree
//    }
//}


//class Solution {
//    func winnerOfGame(_ colors: String) -> Bool {
//        if colors.count <= 2 { return false }
//        var countA = 0, countB = 0, contiA = 0, contiB = 0
//
//        for cha in  colors{
//            if cha == "A" {
//                contiA += 1
//                contiB = 0
//            } else {
//                contiA = 0
//                contiB += 1
//            }
//
//            if contiA >= 3 {
//                countA += 1
//            }else if contiB >= 3 {
//                countB += 1
//            }
//        }
//        return countA > countB
//    }
//}


//class Solution {
//    func findKthNumber(_ n: Int, _ k: Int) -> Int {
//
//        func findNodeCount(_ count: Int, _ node: Int) -> Int {
//            var curNode = node
//            var nextNode = node + 1
//            var sum = 0
//
//            while (curNode <= count) {
//                sum += min(count - curNode + 1, nextNode - curNode)
//                curNode *= 10
//                nextNode *= 10
//            }
//            print("count:\(count) node:\(node) sum:\(sum)")
//            return sum
//        }
//
//        var curNode = 1
//        var nodeCount = k - 1
//
//        while nodeCount > 0 {
//            let subNodeCount = findNodeCount(n, curNode)
//            if subNodeCount > nodeCount {
//                curNode *= 10
//                nodeCount -= 1
//            } else {
//                curNode += 1
//                nodeCount -= subNodeCount
//            }
//        }
//
//        return curNode
//    }
//
//}
//
//
// var sol = Solution()
//sol.findKthNumber(265, 200)


// leetcode 661

class Solution {
    func imageSmoother(_ img: [[Int]]) -> [[Int]] {
        
        func averageImage(_ imgIndex:(Int, Int)) -> Int {
            var count = 0
            var sum = 0
            for indexH in [imgIndex.0 - 1, imgIndex.0, imgIndex.0 + 1] {
                for indexV in [imgIndex.1 - 1, imgIndex.1, imgIndex.1 + 1] {
                    if indexH >= 0 && indexV >= 0 && indexH < img.count && indexV < img.first!.count {
                        count += 1
                        sum += img[indexH][indexV]
                    }
                }
            }
            return sum / count
        }
        
        var resultImg : [[Int]] = img
        for (indexH, imgH) in img.enumerated() {
            for (indexV, _) in imgH.enumerated() {
                resultImg[indexH][indexV] = averageImage((indexH, indexV))
            }
        }
        
        return resultImg
    }
}


var sol = Solution()
sol.imageSmoother([[1,1,1],[1,0,1],[1,1,1]])
