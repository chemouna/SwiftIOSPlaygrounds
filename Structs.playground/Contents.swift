//: Playground - noun: a place where people can play

import UIKit


struct Point {
    var x: Int
    var y: Int
}

let origin = Point(x: 0, y: 0)

var thirdPoint = origin
thirdPoint.x += 10

thirdPoint.x
origin.x

extension Point {
    static let origin = Point(x: 0, y: 0)
}
Point.origin

struct Size {
    var width: Int
    var height: Int
}

struct Rectangle {
    var origin: Point
    var size: Size
}

extension Rectangle {
    init(x: Int = 0, y: Int = 0, width: Int, height: Int) {
        origin = Point(x: x, y: y)
        size = Size(width: width, height: height)
        //or
        //self.init(origin: Point(x: x, y: y), size: Size(width: width, height: height))
    }
}

var screen = Rectangle(width: 320, height: 480) {
    didSet {
        print("Screen changed.")
    }
}

screen.origin.x = 10
screen.origin.x

func +(lhs: Point, rhs: Point) -> Point {
    return Point(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
}

screen.origin.x

(screen.origin + Point(x: 20, y: 30)).x

screen.origin.x

extension Rectangle {
    mutating func translate(by offset: Point) {
        origin = origin + offset
    }
}

screen.translate(by: Point(x: 10, y: 10))
screen.origin.x

let otherScreen = screen
//otherScreen.translate(by: Point(x: 10, y: 10))
let p = otherScreen.origin
//p.x = 10

extension Rectangle {
    func translated(by offset: Point) -> Rectangle {
        var copy = self
        copy.translate(by: offset)
        return copy
    }
}

func moveByTenTen(rectangle: Rectangle) -> Rectangle {
    var changed = rectangle
    changed.translate(by: Point(x: 10, y: 10))
    return changed
}
screen = moveByTenTen(rectangle: screen)

func moveByTwentyTwenty(rectangle: inout Rectangle) {
    rectangle.translate(by: Point(x: 20, y :20))
}

let immutableScreen = screen
//moveByTwentyTwenty(rectangle: &immutableScreen) //error

func +=(lhs: inout Point, rhs: inout Point) {
    lhs = lhs + rhs
}
var myPoint = screen.origin
var np = Point(x: 15, y: 15)
myPoint += np

var array = [Point(x: 0, y: 0), Point(x: 10, y: 10)]
var npa = Point(x: 100, y: 100)
array[0] += npa





