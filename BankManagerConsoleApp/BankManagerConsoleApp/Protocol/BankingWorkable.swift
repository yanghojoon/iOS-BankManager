//
//  BankingWorkable.swift
//  BankManagerConsoleApp
//
//  Created by yeha on 2021/12/24.
//

import Foundation

protocol BankingWorkable {
    var identifier: Int { get set }
    func work(for clientIdentifier: Int, task: Bank.Task)
}

extension BankingWorkable {
    func work(for clientIdentifier: Int, task: Bank.Task) {
        print("\(clientIdentifier)번 고객 \(task.name)업무 시작")
        Thread.sleep(forTimeInterval: task.time)
        print("\(clientIdentifier)번 고객 \(task.name)업무 완료")
    }
}
