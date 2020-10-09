//
//  ContentView.swift
//  H4X0R News
//
//  Created by Vijay Padmakumar on 05/06/2020.
//  Copyright © 2020 Vijay Padmakumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        VStack {
            NavigationView {
                List(networkManager.posts) { post in
                    NavigationLink(destination: DetailView(url: post.url)){
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                }
                .navigationBarTitle("H4X0R News")
            }
            .onAppear {
                self.networkManager.fetchData()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
