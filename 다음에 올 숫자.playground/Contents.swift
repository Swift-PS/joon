import Foundation

func solution(_ common: [Int]) -> Int {
    var differences: [Int] = []
    var ratios: [Int] = []

    for i in 1..<common.count {
        differences.append(common[i] - common[i - 1])
        ratios.append(common[i] / common[i - 1])
    }

    if differences.allSatisfy({ $0 == differences.first }) { // 등차수열인 경우
        return common.last! + differences.first!
    } else { // 등비수열인 경우
        return common.last! * ratios.first!
    }
}
