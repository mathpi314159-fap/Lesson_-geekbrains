// task1
// Написать функцию, которая определяет, четное число или нет.
print("**********Task1**********")
func isEven(_ number:Int) -> Bool {
    return number % 2 == 0 ? true : false 
}
print(isEven(2))
print(isEven(0))
print(isEven(23))

// task2
// Написать функцию, которая определяет, делится ли число без остатка на 3.
print("**********Task2**********")
func isDivBy3WithoutRem(_ number:Int) -> Bool {
    return number % 3 == 0 ? true : false 
}
print(isDivBy3WithoutRem(3))
print(isDivBy3WithoutRem(4))
print(isDivBy3WithoutRem(-3))
print(isDivBy3WithoutRem(27))

// task3
// Создать возрастающий массив из 100 чисел.
print("**********Task3**********")
let size: Int = 100
var array: [Int] = Array(0...99)
print(array)

// task4 
// Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
print("**********Task4**********")
array.removeAll(where: isEven(_:))
array.removeAll(where: {$0 % 3 != 0})
print(array)
    
//task5
// Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов
print("**********Task5**********")
func appendNewElemFibonacci(_ fibonacci: inout [Int]) {
    if fibonacci.count == 0 {
        fibonacci.append(0)
    }
    else if fibonacci.count == 1{
        fibonacci.append(1)
    }
    else {
        
        fibonacci.append(fibonacci[fibonacci.endIndex - 1] + fibonacci[fibonacci.endIndex - 2])
    }
}
var fibonacci: [Int] = []
let sizeFibonacci: Int = 50
for item in 0..<sizeFibonacci {
    appendNewElemFibonacci(&fibonacci)
}
print(fibonacci)

// task6
// Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:
// a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
// b. Пусть переменная p изначально равна двум — первому простому числу.
// c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..
// d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
// e. Повторять шаги c и d, пока возможно.
print("**********Task6**********")
func methodEratosfen() -> [Int] {
    var result: [Int] = [2]
    var n : Int = 1000
    var p : Int = 2
    var array : [Int] = Array(2...n)
    while p < n && result.count < 100 {
        array.removeAll(where: {$0 % p == 0 && $0 > p})
        if let index = array.firstIndex(of: p) {
            if index >= array.count - 1 { break }
            p = array[index + 1]
        }
        else { break }
        result.append(p)
    }
    return result
}
var simpleNumbers: [Int] = methodEratosfen()
print(simpleNumbers)
print("count=\(simpleNumbers.count)")
