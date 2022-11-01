import Foundation

struct Queue<T> {
    var elements: [T] = []
    
    public var isEmpty: Bool {
        return elements.count == 0
    }
    
    mutating func inputInEnd(element: T){
        elements.append(element)
    }
    
    mutating func removeFromEnd() -> T{
        return elements.removeLast()
    }
    
    func printMyQueue() {
        print(elements)
    }
    
     
    public var head: T? {
        if isEmpty {
            print("Массив пуст")
        } else {
            print("Последний элемент массива это \(elements.last!)")
            return elements.last
        }
        return elements.last
    }
    
    public var front: T? {
        if isEmpty {
            print("Массив пуст")
        } else {
            print("Первый элемент массива это \(elements.first!)")
            return elements.first
        }
        return elements.first
    }
}

extension Queue {
    func myFilter(predicate:(T) -> Bool) -> [T] {
        var result = [T]()
        for i in elements {
            if predicate(i) {
                result.append(i)
            }
        }
        return result
    }
}
 
struct magazine {
    var name: String
    var mark: Int
}

extension magazine: CustomStringConvertible {
    var description: String{
        return "Имя \(name) оценка \(mark)"
    }
    
    
}

var people = Queue<magazine>()
people.inputInEnd(element: .init(name: "Ignat", mark: 2))
people.inputInEnd(element: .init(name: "Karina", mark: 2))
people.inputInEnd(element: .init(name: "Misha", mark: 2))
people.inputInEnd(element: .init(name: "Maxim", mark: 5))

people.removeFromEnd()

people.printMyQueue()

let goodPeople = people.myFilter(predicate: {$0.mark == 2})
print(goodPeople)
