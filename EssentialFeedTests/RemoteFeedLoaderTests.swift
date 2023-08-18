//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Charita R on 18/08/23.
//

import XCTest

class RemoteFeedloader {
    
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "www.google.com")
    }
}


class HTTPClient {
    static let shared = HTTPClient()
    
    private init() {}
    
    var requestedURL: URL?
}


final class RemoteFeedLoaderTests: XCTestCase {

    
    func test_init_doesNotRequestDataFromURL(){
        let client = HTTPClient.shared
        _ = RemoteFeedloader()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL(){
        let client = HTTPClient.shared
        let sut = RemoteFeedloader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }
    

}
