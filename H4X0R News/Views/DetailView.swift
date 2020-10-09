//
//  DetailView.swift
//  H4X0R News
//
//  Created by Vijay Padmakumar on 05/06/2020.
//  Copyright © 2020 Vijay Padmakumar. All rights reserved.
//

import SwiftUI
import WebKit
import Foundation

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString:url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


