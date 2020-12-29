#!/usr/bin/swift

//
//  temp.swift
//  PogoHelper
//
//  Created by Kennan Mell on 6/21/20.
//  Copyright © 2020 Kennan Mell. All rights reserved.
//

import Foundation

func printWordpressTable(delta: [String : Int]) {
    let lines = delta.keys.sorted(by: { (lhs, rhs) -> Bool in
        return delta[lhs]! > delta[rhs]!
    })
    var result = "<figure class=\"wp-block-table is-style-stripes\"><table><tbody>"
    var i = 0
    for line in lines {
        i += 1
        result += "<tr><td><strong>" + String(i) + ". " + line
        result += "</strong><br><span class=\"has-inline-color has-foreground-light-color\">"
            + "</span></td>"
        result += "<td class=\"has-text-align-right\" data-align=\"right\">"
            + String(delta[line]!) + "</td></tr>"
    }
    result += "</tbody></table></figure>"
    print(result)
}

let week1Points = ["Kennan" : 98.8,
                   "Ellis" : 71.6,
                   "Bryce" : 98.36,
                   "Nikhil" : 102.88,
                   "Nathan" : 106.2,
                   "Ben" : 106.34,
                   "Josh" : 109.34,
                   "Derek" : 113.38,
                   "Andy" : 114.78,
                   "Lucas" : 131.2,
                   "Hannah" : 137,
                   "Cole" : 137.96]

let week2Points = ["Kennan" : 137.32,
                   "Ellis" : 111.06,
                   "Bryce" : 132.68,
                   "Nikhil" : 137.52,
                   "Nathan" : 119.18,
                   "Ben" : 99.09,
                   "Josh" : 150.1,
                   "Derek" : 120.68,
                   "Andy" : 93.36,
                   "Lucas" : 112.14,
                   "Hannah" : 103.34,
                   "Cole" : 120.16]

let week3Points = ["Kennan" : 126.12,
                   "Ellis" : 104.58,
                   "Bryce" : 112.28,
                   "Nikhil" : 124.6,
                   "Nathan" : 85.38,
                   "Ben" : 100.4,
                   "Josh" : 100.38,
                   "Derek" : 154.54,
                   "Andy" : 71.7,
                   "Lucas" : 128.1,
                   "Hannah" : 84.54,
                   "Cole" : 111.02]

let week4Points = ["Kennan" : 125.3,
                   "Ellis" : 122.02,
                   "Bryce" : 147.76,
                   "Nikhil" : 92.1,
                   "Nathan" : 114.4,
                   "Ben" : 75.62,
                   "Josh" : 143.78,
                   "Derek" : 97.62,
                   "Andy" : 91.64,
                   "Lucas" : 79.72,
                   "Hannah" : 65.1,
                   "Cole" : 141.88]

let week5Points = ["Kennan" : 100.24,
                   "Ellis" : 61.9,
                   "Bryce" : 98.22,
                   "Nikhil" : 124.18,
                   "Nathan" : 91.38,
                   "Ben" : 92.5,
                   "Josh" : 115.74,
                   "Derek" : 88.62,
                   "Andy" : 72.34,
                   "Lucas" : 134.5,
                   "Hannah" : 137.26,
                   "Cole" : 167.28]

let week6Points = ["Kennan" : 113.46,
                   "Ellis" : 124.34,
                   "Bryce" : 88.44,
                   "Nikhil" : 123.02,
                   "Nathan" : 84.88,
                   "Ben" : 86.2,
                   "Josh" : 65.78,
                   "Derek" : 106.48,
                   "Andy" : 93.62,
                   "Lucas" : 123.12,
                   "Hannah" : 101.94,
                   "Cole" : 79]

let week7Points = ["Kennan" : 109.12,
                   "Ellis" : 133.44,
                   "Bryce" : 97.16,
                   "Nikhil" : 128.92,
                   "Nathan" : 57.32,
                   "Ben" : 81.66,
                   "Josh" : 116.82,
                   "Derek" : 92.38,
                   "Andy" : 112.8,
                   "Lucas" : 143.4,
                   "Hannah" : 106.66,
                   "Cole" : 93.02]

let week8Points = ["Kennan" : 146.82,
                   "Ellis" : 68.44,
                   "Bryce" : 115.06,
                   "Nikhil" : 98.64,
                   "Nathan" : 65.06,
                   "Ben" : 85.24,
                   "Josh" : 105.32,
                   "Derek" : 96.26,
                   "Andy" : 58.22,
                   "Lucas" : 81.94,
                   "Hannah" : 113.5,
                   "Cole" : 66.44]

let week9Points = ["Kennan" : 144.96,
                   "Ellis" : 69,
                   "Bryce" : 78.86,
                   "Nikhil" : 129.2,
                   "Nathan" : 93.76,
                   "Ben" : 76.58,
                   "Josh" : 99.34,
                   "Derek" : 134.3,
                   "Andy" : 81.02,
                   "Lucas" : 115.72,
                   "Hannah" : 75.9,
                   "Cole" : 85.4]

let week10Points = ["Kennan" : 84.18,
                    "Ellis" : 73.06,
                   "Bryce" : 109.74,
                   "Nikhil" : 77.22,
                   "Nathan" : 64.32,
                   "Ben" : 82.42,
                   "Josh" : 93.72,
                   "Derek" : 102.06,
                   "Andy" : 98.72,
                   "Lucas" : 117.3,
                   "Hannah" : 89.78,
                   "Cole" : 127.1]

let week11Points = ["Kennan" : 123.08,
                    "Ellis" : 60.54,
                    "Bryce" : 85.04,
                    "Nikhil" : 104.68,
                    "Nathan" : 97.5,
                   "Ben" : 88.06,
                   "Josh" : 117.38,
                   "Derek" : 132.86,
                   "Andy" : 69.42,
                   "Lucas" : 137.12,
                   "Hannah" : 124.64,
                   "Cole" : 103.24]

let week12Points = ["Kennan" : 116.3,
                    "Ellis" : 64.2,
                    "Bryce" : 141.9,
                    "Nikhil" : 141.5,
                    "Nathan" : 77.76,
                    "Ben" : 86.72,
                   "Josh" : 84.54,
                   "Derek" : 91.88,
                   "Andy" : 54.62,
                   "Lucas" : 111,
                   "Hannah" : 82.92,
                   "Cole" : 95.14]

let week13Points = ["Kennan" : 134.46,
                    "Ellis" : 86.98,
                    "Bryce" : 84.1,
                    "Nikhil" : 99.82,
                    "Nathan" : 101.26,
                    "Ben" : 98.58,
                    "Josh" : 74.8,
                   "Derek" : 116.6,
                   "Andy" : 100.38,
                   "Lucas" : 95.52,
                   "Hannah" : 106.44,
                   "Cole" : 114.7]

let week1Results = ["Kennan" : false,
                    "Ellis" : false,
                    "Bryce" : false,
                    "Nikhil" : false,
                    "Nathan" : false,
                    "Ben" : false,
                    "Josh" : true,
                    "Derek" : true,
                    "Andy" : true,
                    "Lucas" : true,
                    "Hannah" : true,
                    "Cole" : true]

let week2Results = ["Kennan" : true,
                    "Ellis" : true,
                    "Bryce" : true,
                    "Nikhil" : true,
                    "Nathan" : true,
                    "Ben" : false,
                    "Josh" : true,
                    "Derek" : false,
                    "Andy" : false,
                    "Lucas" : false,
                    "Hannah" : false,
                    "Cole" : false]

let week3Results = ["Kennan" : true,
                    "Ellis" : false,
                    "Bryce" : true,
                    "Nikhil" : false,
                    "Nathan" : false,
                    "Ben" : true,
                    "Josh" : false,
                    "Derek" : true,
                    "Andy" : false,
                    "Lucas" : true,
                    "Hannah" : false,
                    "Cole" : true]

let week4Results = ["Kennan" : false,
                    "Ellis" : false,
                    "Bryce" : true,
                    "Nikhil" : false,
                    "Nathan" : false,
                    "Ben" : true,
                    "Josh" : true,
                    "Derek" : true,
                    "Andy" : true,
                    "Lucas" : false,
                    "Hannah" : false,
                    "Cole" : true]

let week5Results = ["Kennan" : true,
                    "Ellis" : false,
                    "Bryce" : false,
                    "Nikhil" : false,
                    "Nathan" : false,
                    "Ben" : false,
                    "Josh" : true,
                    "Derek" : false,
                    "Andy" : true,
                    "Lucas" : true,
                    "Hannah" : true,
                    "Cole" : true]

let week6Results = ["Kennan" : false,
                    "Ellis" : true,
                    "Bryce" : true,
                    "Nikhil" : false,
                    "Nathan" : false,
                    "Ben" : false,
                    "Josh" : false,
                    "Derek" : true,
                    "Andy" : true,
                    "Lucas" : true,
                    "Hannah" : true,
                    "Cole" : false]

let week7Results = ["Kennan" : false,
                    "Ellis" : true,
                    "Bryce" : true,
                    "Nikhil" : true,
                    "Nathan" : false,
                    "Ben" : false,
                    "Josh" : true,
                    "Derek" : false,
                    "Andy" : true,
                    "Lucas" : true,
                    "Hannah" : false,
                    "Cole" : false]

let week8Results = ["Kennan" : true,
                    "Ellis" : false,
                    "Bryce" : true,
                    "Nikhil" : false,
                    "Nathan" : false,
                    "Ben" : true,
                    "Josh" : false,
                    "Derek" : true,
                    "Andy" : false,
                    "Lucas" : true,
                    "Hannah" : true,
                    "Cole" : false]

let week9Results = ["Kennan" : true,
                    "Ellis" : false,
                    "Bryce" : false,
                    "Nikhil" : true,
                    "Nathan" : false,
                    "Ben" : false,
                    "Josh" : true,
                    "Derek" : true,
                    "Andy" : true,
                    "Lucas" : true,
                    "Hannah" : false,
                    "Cole" : false]

let week10Results = ["Kennan" : true,
                    "Ellis" : false,
                    "Bryce" : true,
                    "Nikhil" : false,
                    "Nathan" : false,
                    "Ben" : false,
                    "Josh" : false,
                    "Derek" : true,
                    "Andy" : true,
                    "Lucas" : true,
                    "Hannah" : false,
                    "Cole" : true]

let week11Results = ["Kennan" : true,
                    "Ellis" : false,
                    "Bryce" : false,
                    "Nikhil" : false,
                    "Nathan" : true,
                    "Ben" : false,
                    "Josh" : true,
                    "Derek" : true,
                    "Andy" : false,
                    "Lucas" : true,
                    "Hannah" : false,
                    "Cole" : true]

let week12Results = ["Kennan" : true,
                    "Ellis" : false,
                    "Bryce" : true,
                    "Nikhil" : true,
                    "Nathan" : false,
                    "Ben" : false,
                    "Josh" : false,
                    "Derek" : false,
                    "Andy" : false,
                    "Lucas" : true,
                    "Hannah" : true,
                    "Cole" : true]

let week13Results = ["Kennan" : true,
                    "Ellis" : false,
                    "Bryce" : false,
                    "Nikhil" : false,
                    "Nathan" : false,
                    "Ben" : true,
                    "Josh" : false,
                    "Derek" : true,
                    "Andy" : false,
                    "Lucas" : true,
                    "Hannah" : true,
                    "Cole" : true]

let allPoints = [week1Points, week2Points, week3Points, week4Points, week5Points, week6Points, week7Points, week8Points, week9Points, week10Points, week11Points, week12Points, week12Points]

let allResults = [week1Results, week2Results, week3Results, week4Results, week5Results, week6Results, week7Results, week8Results, week9Results, week10Results, week11Results, week12Results, week13Results]

var delta = ["Kennan" : 0,
             "Ellis" : 0,
             "Bryce" : 0,
             "Nikhil" : 0,
             "Nathan" : 0,
             "Ben" : 0,
             "Josh" : 0,
             "Derek" : 0,
             "Andy" : 0,
             "Lucas" : 0,
             "Hannah" : 0,
             "Cole" : 0]

for i in 0..<allPoints.count {
    print(allPoints[i])
    let pointsSorted = allPoints[i].keys.sorted(by: { (lhs, rhs) -> Bool in
        return allPoints[i][lhs]! < allPoints[i][rhs]!
    })
    print(pointsSorted)
    let results = allResults[i]
    for j in 0..<pointsSorted.count {
        let item = pointsSorted[j]
        if results[item]! {
            delta[item] = delta[item]! + results.count - 1 - j
        } else {
            delta[item] = delta[item]! - j
        }
    }
}

print(delta)
printWordpressTable(delta: delta)
