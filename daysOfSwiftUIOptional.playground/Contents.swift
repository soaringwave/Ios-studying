import Cocoa

var number: Int? = nil
number = 30
//if number > 10 {
//    print("\(number) is bigger than 10. (1)")
//}
if let number = number {
    if number > 10 {
        print("\(number) is bigger than 10. (2)")
    }
} else {
    print("number is unwrapped.")
}
//if number > 10 {
//    print("\(number) is bigger than 10. (3)")
//}
