#!/usr/bin/swift

//
//  temp.swift
//  PogoHelper
//
//  Created by Kennan Mell on 6/21/20.
//  Copyright © 2020 Kennan Mell. All rights reserved.
//

import Foundation

func printWordpressTableLegacy(delta: [String : Int]) {
    let lines = delta.keys.sorted(by: { (lhs, rhs) -> Bool in
        return delta[lhs]! > delta[rhs]!
    })
    var result = "<figure class=\"wp-block-table is-style-stripes\"><table><tbody>"
    result += "<tr><td><strong>" + "Team"
    result += "</strong><br><span class=\"has-inline-color has-foreground-light-color\">"
        + "</span></td>"
    result += "<td class=\"has-text-align-right\" data-align=\"right\">"
    + "<strong>Good Luck</strong>" + "</td></tr>"
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

func printWordpressTableFull(actualPoints: [String : Double],
                             expectedWins: [String : Int],
                             actualWins: [String : Int],
                             expectedStandings lines: [String],
                             actualStandings: [String]) {
    var result = "<figure class=\"wp-block-table is-style-stripes\"><table><tbody>"
    result += "<tr><td><strong>" + "Team"
    result += "</strong><br><span class=\"has-inline-color has-foreground-light-color\">"
        + "</span></td>"
    result += "<td class=\"has-text-align-right\" data-align=\"right\">"
    + "<strong>PF</strong>" + "</td>"
    result += "<td class=\"has-text-align-right\" data-align=\"right\">"
    + "<strong>Expected W</strong>" + "</td>"
    result += "<td class=\"has-text-align-right\" data-align=\"right\">"
    + "<strong>Actual W</strong>" + "</td>"
    result += "<td class=\"has-text-align-right\" data-align=\"right\">"
    + "<strong>W Delta</strong>" + "</td>"
    result += "<td class=\"has-text-align-right\" data-align=\"right\">"
        + "<strong>Pos Delta</strong>" + "</td></tr>"
    var i = 0
    for line in lines {
        i += 1
        result += "<tr><td><strong>" + String(i) + ". " + line
        result += "</strong><br><span class=\"has-inline-color has-foreground-light-color\">"
            + "</span></td>"
        result += "<td class=\"has-text-align-right\" data-align=\"right\">"
        + String(round(actualPoints[line]!)) + "</td>"
        result += "<td class=\"has-text-align-right\" data-align=\"right\">"
        + String(expectedWins[line]!) + "</td>"
        result += "<td class=\"has-text-align-right\" data-align=\"right\">"
        + String(actualWins[line]!) + "</td>"
        result += "<td class=\"has-text-align-right\" data-align=\"right\">"
        + String(actualWins[line]! - expectedWins[line]!) + "</td>"
        let actual = actualStandings.firstIndex(of: line)!
        let expected = i - 1
        result += "<td class=\"has-text-align-right\" data-align=\"right\">"
            + String(expected - actual) + "</td></tr>"
    }
    result += "</tbody></table></figure>"
    print(result)
}

func printWordpressTableWDelta(actualPoints: [String : Double],
                               expectedWins: [String : Int],
                               actualWins: [String : Int]) {
    let lines = actualPoints.keys.sorted(by: { (lhs, rhs) -> Bool in
        if actualWins[lhs]! - expectedWins[lhs]! != actualWins[rhs]! - expectedWins[rhs]! {
            return actualWins[lhs]! - expectedWins[lhs]! > actualWins[rhs]! - expectedWins[rhs]!
        } else {
            return lhs < rhs
        }
    })
    var result = "<figure class=\"wp-block-table is-style-stripes\"><table><tbody>"
    result += "<tr><td><strong>" + "Team"
    result += "</strong><br><span class=\"has-inline-color has-foreground-light-color\">"
        + "</span></td>"
    result += "<td class=\"has-text-align-right\" data-align=\"right\">"
    + "<strong>W Delta</strong>" + "</td></tr>"
    var i = 0
    for line in lines {
        i += 1
        result += "<tr><td><strong>" + String(i) + ". " + line
        result += "</strong><br><span class=\"has-inline-color has-foreground-light-color\">"
            + "</span></td>"
        result += "<td class=\"has-text-align-right\" data-align=\"right\">"
            + String(actualWins[line]! - expectedWins[line]!) + "</td></tr>"
    }
    result += "</tbody></table></figure>"
    print(result)
}

func printWordpressTablePosDelta(standingsDelta: [String : Int]) {
    let lines = standingsDelta.keys.sorted(by: { (lhs, rhs) -> Bool in
        if standingsDelta[lhs] != standingsDelta[rhs] {
            return standingsDelta[lhs]! > standingsDelta[rhs]!
        } else {
            return lhs < rhs
        }
    })
    var result = "<figure class=\"wp-block-table is-style-stripes\"><table><tbody>"
    result += "<tr><td><strong>" + "Team"
    result += "</strong><br><span class=\"has-inline-color has-foreground-light-color\">"
        + "</span></td>"
    result += "<td class=\"has-text-align-right\" data-align=\"right\">"
    + "<strong>Pos Delta</strong>" + "</td></tr>"
    var i = 0
    for line in lines {
        i += 1
        result += "<tr><td><strong>" + String(i) + ". " + line
        result += "</strong><br><span class=\"has-inline-color has-foreground-light-color\">"
            + "</span></td>"
        result += "<td class=\"has-text-align-right\" data-align=\"right\">"
            + String(standingsDelta[line]!) + "</td></tr>"
    }
    result += "</tbody></table></figure>"
    print(result)
}

let week1Points = ["Kennan" : 69.56,
                   "Ellis" : 94.48,
                   "Bryce" : 120.22,
                   "Nikhil" : 168.66,
                   "Nathan" : 124,
                   "Ben" : 103.26,
                   "Josh" : 134.56,
                   "Derek" : 122.34,
                   "Andy" : 91.8,
                   "Lucas" : 85.28,
                   "Justin" : 104.06,
                   "Cole" : 104.48]

let week2Points = ["Kennan" : 82.6,
                   "Ellis" : 94.62,
                   "Bryce" : 113.68,
                   "Nikhil" : 104,
                   "Nathan" : 100.96,
                   "Ben" : 100.9,
                   "Josh" : 103.52,
                   "Derek" : 108.42,
                   "Andy" : 115.56,
                   "Lucas" : 106.92,
                   "Justin" : 124.24,
                   "Cole" : 91.48]

let week3Points = ["Kennan" : 105.34,
                   "Ellis" : 102,
                   "Bryce" : 127.42,
                   "Nikhil" : 65.74,
                   "Nathan" : 81.58,
                   "Ben" : 103.84,
                   "Josh" : 120.52,
                   "Derek" : 94.32,
                   "Andy" : 121.92,
                   "Lucas" : 128.64,
                   "Justin" : 104.08,
                   "Cole" : 80.54]

let week4Points = ["Kennan" : 121.62,
                   "Ellis" : 163.12,
                   "Bryce" : 101.82,
                   "Nikhil" : 98.82,
                   "Nathan" : 103.74,
                   "Ben" : 98.48,
                   "Josh" : 86.56,
                   "Derek" : 110.9,
                   "Andy" : 99.02,
                   "Lucas" : 86.18,
                   "Justin" : 150.66,
                   "Cole" : 92.54]

let week5Points = ["Kennan" : 168.46,
                   "Ellis" : 88.28,
                   "Bryce" : 143.48,
                   "Nikhil" : 120.36,
                   "Nathan" : 125.18,
                   "Ben" : 116.02,
                   "Josh" : 133.68,
                   "Derek" : 124.7,
                   "Andy" : 114.6,
                   "Lucas" : 110.02,
                   "Justin" : 113.54,
                   "Cole" : 75.38]

let week6Points = ["Kennan" : 124,
                   "Ellis" : 74.18,
                   "Bryce" : 128.1,
                   "Nikhil" : 117.46,
                   "Nathan" : 100.68,
                   "Ben" : 107.4,
                   "Josh" : 114.84,
                   "Derek" : 105.24,
                   "Andy" : 140.82,
                   "Lucas" : 115.2,
                   "Justin" : 137.38,
                   "Cole" : 98.98]

let week7Points = ["Kennan" : 126.86,
                   "Ellis" : 73.04,
                   "Bryce" : 107.3,
                   "Nikhil" : 117.84,
                   "Nathan" : 115.48,
                   "Ben" : 118.04,
                   "Josh" : 149.54,
                   "Derek" : 79.56,
                   "Andy" : 103.44,
                   "Lucas" : 106.18,
                   "Justin" : 116.24,
                   "Cole" : 115.4]

let week8Points = ["Kennan" : 104.16,
                   "Ellis" : 87.34,
                   "Bryce" : 81.44,
                   "Nikhil" : 108.86,
                   "Nathan" : 122.26,
                   "Ben" : 80.02,
                   "Josh" : 99.46,
                   "Derek" : 102.7,
                   "Andy" : 97.66,
                   "Lucas" : 76.12,
                   "Justin" : 104.86,
                   "Cole" : 94.4]

let week9Points = ["Kennan" : 106.3,
                   "Ellis" : 112.76,
                   "Bryce" : 89.18,
                   "Nikhil" : 100.74,
                   "Nathan" : 91.74,
                   "Ben" : 94.68,
                   "Josh" : 83.18,
                   "Derek" : 71.56,
                   "Andy" : 81.76,
                   "Lucas" : 98.84,
                   "Justin" : 76.44,
                   "Cole" : 104.52]

let week10Points = ["Kennan" : 127.78,
                    "Ellis" : 97.74,
                    "Bryce" : 107.94,
                    "Nikhil" : 92.64,
                    "Nathan" : 81.02,
                    "Ben" : 62.32,
                    "Josh" : 133.34,
                    "Derek" : 106.92,
                    "Andy" : 103.5,
                    "Lucas" : 88.2,
                    "Justin" : 78.6,
                    "Cole" : 93.92]

let week11Points = ["Kennan" : 164.6,
                    "Ellis" : 101.6,
                    "Bryce" : 81.24,
                    "Nikhil" : 106.4,
                    "Nathan" : 96.14,
                    "Ben" : 121.68,
                    "Josh" : 82.48,
                    "Derek" : 115.46,
                    "Andy" : 85.66,
                    "Lucas" : 122.98,
                    "Justin" : 89.09,
                    "Cole" : 106.22]

let week12Points = ["Kennan" : 113.54,
                    "Ellis" : 114.82,
                    "Bryce" : 77.6,
                    "Nikhil" : 110.22,
                    "Nathan" : 94.1,
                    "Ben" : 63.16,
                    "Josh" : 81.28,
                    "Derek" : 71.48,
                    "Andy" : 121.4,
                    "Lucas" : 111.42,
                    "Justin" : 118.34,
                    "Cole" : 83.82]

let week13Points = ["Kennan" : 128.72,
                    "Ellis" : 100.76,
                    "Bryce" : 61.32,
                    "Nikhil" : 130.92,
                    "Nathan" : 109.02,
                    "Ben" : 91.7,
                    "Josh" : 99.84,
                   "Derek" : 112,
                    "Andy" : 132.7,
                    "Lucas" : 100.08,
                    "Justin" : 91.52,
                    "Cole" : 81.06]

let week14Points = ["Kennan" : 145.94,
                    "Ellis" : 143.92,
                    "Bryce" : 111.54,
                    "Nikhil" : 108.92,
                    "Nathan" : 78.88,
                    "Ben" : 112.48,
                    "Josh" : 124.8,
                    "Derek" : 117.78,
                    "Andy" : 161.12,
                    "Lucas" : 103.2,
                    "Justin" : 83.12,
                    "Cole" : 96.44]

let week1Results = ["Kennan" : false,
                    "Ellis" : false,
                    "Bryce" : false,
                    "Nikhil" : true,
                    "Nathan" : true,
                    "Ben" : true,
                    "Josh" : true,
                    "Derek" : true,
                    "Andy" : false,
                    "Lucas" : false,
                    "Justin" : true,
                    "Cole" : false]

let week2Results = ["Kennan" : false,
                    "Ellis" : false,
                    "Bryce" : true,
                    "Nikhil" : true,
                    "Nathan" : false,
                    "Ben" : true,
                    "Josh" : false,
                    "Derek" : true,
                    "Andy" : true,
                    "Lucas" : false,
                    "Justin" : true,
                    "Cole" : false]

let week3Results = ["Kennan" : true,
                    "Ellis" : false,
                    "Bryce" : true,
                    "Nikhil" : false,
                    "Nathan" : false,
                    "Ben" : true,
                    "Josh" : false,
                    "Derek" : false,
                    "Andy" : true,
                    "Lucas" : true,
                    "Justin" : true,
                    "Cole" : false]

let week4Results = ["Kennan" : true,
                    "Ellis" : true,
                    "Bryce" : false,
                    "Nikhil" : false,
                    "Nathan" : true,
                    "Ben" : false,
                    "Josh" : false,
                    "Derek" : true,
                    "Andy" : true,
                    "Lucas" : false,
                    "Justin" : true,
                    "Cole" : false]

let week5Results = ["Kennan" : true,
                    "Ellis" : false,
                    "Bryce" : true,
                    "Nikhil" : true,
                    "Nathan" : false,
                    "Ben" : true,
                    "Josh" : true,
                    "Derek" : false,
                    "Andy" : true,
                    "Lucas" : false,
                    "Justin" : false,
                    "Cole" : false]

let week6Results = ["Kennan" : true,
                    "Ellis" : false,
                    "Bryce" : true,
                    "Nikhil" : true,
                    "Nathan" : false,
                    "Ben" : false,
                    "Josh" : false,
                    "Derek" : true,
                    "Andy" : true,
                    "Lucas" : false,
                    "Justin" : true,
                    "Cole" : false]

let week7Results = ["Kennan" : true,
                    "Ellis" : false,
                    "Bryce" : false,
                    "Nikhil" : true,
                    "Nathan" : false,
                    "Ben" : false,
                    "Josh" : true,
                    "Derek" : false,
                    "Andy" : false,
                    "Lucas" : true,
                    "Justin" : true,
                    "Cole" : true]

let week8Results = ["Kennan" : false,
                    "Ellis" : false,
                    "Bryce" : false,
                    "Nikhil" : true,
                    "Nathan" : true,
                    "Ben" : false,
                    "Josh" : true,
                    "Derek" : true,
                    "Andy" : true,
                    "Lucas" : false,
                    "Justin" : false,
                    "Cole" : true]

let week9Results = ["Kennan" : true,
                    "Ellis" : true,
                    "Bryce" : true,
                    "Nikhil" : true,
                    "Nathan" : true,
                    "Ben" : false,
                    "Josh" : false,
                    "Derek" : false,
                    "Andy" : false,
                    "Lucas" : false,
                    "Justin" : false,
                    "Cole" : true]

let week10Results = ["Kennan" : true,
                    "Ellis" : true,
                    "Bryce" : true,
                    "Nikhil" : false,
                    "Nathan" : false,
                    "Ben" : false,
                    "Josh" : true,
                    "Derek" : true,
                    "Andy" : false,
                    "Lucas" : true,
                    "Justin" : false,
                    "Cole" : false]

let week11Results = ["Kennan" : true,
                    "Ellis" : true,
                    "Bryce" : false,
                    "Nikhil" : true,
                    "Nathan" : false,
                    "Ben" : true,
                    "Josh" : false,
                    "Derek" : false,
                    "Andy" : false,
                    "Lucas" : true,
                    "Justin" : false,
                    "Cole" : true]

let week12Results = ["Kennan" : true,
                    "Ellis" : false,
                    "Bryce" : true,
                    "Nikhil" : false,
                    "Nathan" : true,
                    "Ben" : false,
                    "Josh" : false,
                    "Derek" : false,
                    "Andy" : true,
                    "Lucas" : true,
                    "Justin" : true,
                    "Cole" : false]

let week13Results = ["Kennan" : false,
                    "Ellis" : true,
                    "Bryce" : false,
                    "Nikhil" : true,
                    "Nathan" : true,
                    "Ben" : false,
                    "Josh" : false,
                    "Derek" : true,
                    "Andy" : true,
                    "Lucas" : true,
                    "Justin" : false,
                    "Cole" : false]

let week14Results = ["Kennan" : true,
                    "Ellis" : true,
                    "Bryce" : false,
                    "Nikhil" : false,
                    "Nathan" : false,
                    "Ben" : true,
                    "Josh" : true,
                    "Derek" : false,
                    "Andy" : true,
                    "Lucas" : false,
                    "Justin" : false,
                    "Cole" : true]

let allPoints = [week1Points, week2Points, week3Points, week4Points, week5Points, week6Points, week7Points, week8Points, week9Points, week10Points, week11Points, week12Points, week13Points, week14Points]

let allResults = [week1Results, week2Results, week3Results, week4Results, week5Results, week6Results, week7Results, week8Results, week9Results, week10Results, week11Results, week12Results, week13Results, week14Results]

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
             "Justin" : 0,
             "Cole" : 0]

var actualPoints: [String : Double] = ["Kennan" : 0,
                                       "Ellis" : 0,
                                       "Bryce" : 0,
                                       "Nikhil" : 0,
                                       "Nathan" : 0,
                                       "Ben" : 0,
                                       "Josh" : 0,
                                       "Derek" : 0,
                                       "Andy" : 0,
                                       "Lucas" : 0,
                                       "Justin" : 0,
                                       "Cole" : 0]

var expectedWins = ["Kennan" : 0,
                    "Ellis" : 0,
                    "Bryce" : 0,
                    "Nikhil" : 0,
                    "Nathan" : 0,
                    "Ben" : 0,
                    "Josh" : 0,
                    "Derek" : 0,
                    "Andy" : 0,
                    "Lucas" : 0,
                    "Justin" : 0,
                    "Cole" : 0]

var actualWins = ["Kennan" : 0,
                  "Ellis" : 0,
                  "Bryce" : 0,
                  "Nikhil" : 0,
                  "Nathan" : 0,
                  "Ben" : 0,
                  "Josh" : 0,
                  "Derek" : 0,
                  "Andy" : 0,
                  "Lucas" : 0,
                  "Justin" : 0,
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
        if j >= 6 {
            expectedWins[item]! += 1
        }
        actualPoints[item]! += allPoints[i][item]!
        if results[item]! {
            delta[item] = delta[item]! + results.count - 1 - j
            actualWins[item]! += 1
        } else {
            delta[item] = delta[item]! - j
        }
    }
}

let actualStandings = actualPoints.keys.sorted(by: { (lhs, rhs) -> Bool in
    if actualWins[lhs] != actualWins[rhs] {
        return actualWins[lhs]! > actualWins[rhs]!
    } else {
        return actualPoints[lhs]! > actualPoints[rhs]!
    }
})

let expectedStandings = actualPoints.keys.sorted(by: { (lhs, rhs) -> Bool in
    if expectedWins[lhs] != expectedWins[rhs] {
        return expectedWins[lhs]! > expectedWins[rhs]!
    } else {
        return actualPoints[lhs]! > actualPoints[rhs]!
    }
})

var standingsDelta: [String : Int] = [:]
for team in actualStandings {
    standingsDelta[team] = expectedStandings.firstIndex(of: team)! - actualStandings.firstIndex(of: team)!
}

print(delta)
print(actualPoints)
print(expectedWins)
print(actualWins)
print("\n")
printWordpressTableFull(actualPoints: actualPoints, expectedWins: expectedWins, actualWins: actualWins, expectedStandings: expectedStandings, actualStandings: actualStandings)
print("\n")
printWordpressTablePosDelta(standingsDelta: standingsDelta)
print("\n")
printWordpressTableWDelta(actualPoints: actualPoints, expectedWins: expectedWins, actualWins: actualWins)
print("\n")
printWordpressTableLegacy(delta: delta)

var totalPoints = 0.0

for i in 0..<allPoints.count {
    for key in allPoints[i].keys {
        totalPoints += allPoints[i][key]!
    }
}

let averagePoints = totalPoints / 13
print("Average points: ")
print(averagePoints)
