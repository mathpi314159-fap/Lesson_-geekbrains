//task1
func solveQuadEq(coefA A:Double, coefB B:Double, coefC C:Double) -> (x1:Double?, x2:Double?, retCode: Int) {
    var x1:Double?
    var x2:Double?
    var returnCode:Int = 0
    if A == 0 && B == 0 && C != 0 {
        print("No solutions!")
        returnCode = -1
    }
    else if A == 0 && B != 0 && C != 0 {
        x1 = -C / B
    }
    else if A == 0 && B == 0 && C == 0 {
        print("A lot of solutions!")
        returnCode = 1
    }
    else {
        let D:Double = B * B - 4 * A * C
        if D > 0 && A != 0 {
            x1 = (-B + D.squareRoot()) / (2 * A)
            x2 = (-B - D.squareRoot()) / (2 * A)
        }
        else if D == 0 && A != 0 && B != 0 && C != 0 {
            x1 = -B / (2 * A)
            x2 = x1
        }
        else {
            //case D < 0
            print("The equation has complex solutions!")
            returnCode = 2
        }
    }
    if let x1 = x1 {
        print("x_1 = \(x1)")
    }
    if let x2 = x2 {
        print("x_2 = \(x2)")
    }
    print("Return code: \(returnCode)\n")
    return (x1, x2, returnCode)
}

print("**********TASK1**********")
solveQuadEq(coefA: 1, coefB: 3, coefC: -10)
solveQuadEq(coefA: 1, coefB: -8, coefC: 16)
solveQuadEq(coefA: 13, coefB: -4, coefC: 1)
solveQuadEq(coefA: 0, coefB: -4, coefC: 1)
solveQuadEq(coefA: 0, coefB: 0, coefC: 0)
solveQuadEq(coefA: 0, coefB: 0, coefC: 1)

//task2
func solveParamTriangle(leg1 A:Double, leg2 B:Double) -> (square:Double, perimeter:Double, hypotenuse:Double, retCode:Int)? {
    var retCode:Int = 0
    if A <= 0 || B <= 0 {
        print("Exception! leg1 = \(A) or leg2 = \(B) <= 0")
        retCode = -1
        print("Return code = \(retCode)\n")
        return nil
    }
    let C:Double = (A * A + B * B).squareRoot()
    let P:Double = A + B + C
    let S:Double = A * B / 2
    print("square = \(S)")
    print("perimeter = \(P)")
    print("hypotenuse = \(C)")
    print("Return code = 0\n")
    return (S, P, C, retCode)
}

print("**********TASK2**********")
solveParamTriangle(leg1: 3, leg2: 4)
solveParamTriangle(leg1: -1, leg2: 4)
solveParamTriangle(leg1: 3, leg2: -3)
solveParamTriangle(leg1: 0, leg2: 0)

func solveTotalContribution(contribution contr:Double, percent:Double) -> Double? {
    if contr <= 0 {
        print("Exception! Contribution = \(contr) is negative!\n")
        return nil
    }
    if percent <= 0 {
        print("Exception! Percent = \(percent) is negative! Think about it!\n")
        return nil
    }
    
    var year: Int = 5
    var total:Double = contr
    while year > 0 {
        total += total * percent / 100
        year -= 1
    }
    print("Total contribution = \(total)\n")
    return total
}

print("**********TASK3**********")
solveTotalContribution(contribution: 100000, percent: 8)
solveTotalContribution(contribution: -100000, percent: 3)
solveTotalContribution(contribution: 100000, percent: -3)
