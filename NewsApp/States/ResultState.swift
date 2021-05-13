//
//  ResultState.swift
//  NewsApp
//
//  Created by Lucas Parreira on 2/05/21.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [Article])
    case failed(error: Error)
}
