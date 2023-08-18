//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Charita R on 17/08/23.
//

import Foundation

enum FeedLoaderResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: (FeedLoaderResult) -> Void)
}
