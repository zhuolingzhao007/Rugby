//
//  File.swift
//  
//
//  Created by v.khorkov on 31.01.2021.
//

import ArgumentParser
import Files
import ShellOut

struct Log: ParsableCommand {
    static var configuration: CommandConfiguration = .init(
        abstract: "Print last command log."
    )

    func run() throws {
        if Folder.current.containsFile(at: .log) {
            try shellOut(to: "cat " + .log)
        } else {
            print("Can't find log.".red)
        }
    }
}