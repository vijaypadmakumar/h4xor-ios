//
//  PostData.swift
//  H4X0R News
//
//  Created by Vijay Padmakumar on 05/06/2020.
//  Copyright © 2020 Vijay Padmakumar. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url:  String?
}
