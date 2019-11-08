//
//  ContentView.swift
//  StreetCat
//
//  Created by 홍창남 on 2019/10/17.
//  Copyright © 2019 depromeet. All rights reserved.
//

import SwiftUI

protocol ContentViewContainable: View {
    associatedtype ContentView: SwiftUI.View
    var contentView: ContentView { get set }
}

struct ModalView<ContentView: View>: View, ContentViewContainable {
    
    var contentView: ContentView
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(minWidth: 60, idealWidth: 60, maxWidth: 60, minHeight: 5, idealHeight: 5, maxHeight: 5, alignment: .top)
                .foregroundColor(Color(.sRGB, red: 59.0 / 255.0, green: 61 / 255, blue: 73 / 255, opacity: 0.15))
                .cornerRadius(2.5)
                .padding(Edge.Set.top, 13.0)
            Spacer()
            contentView
        }.background(Color.yellow)
    }
}

struct InnerContentView: View {
    var body: some View {
        Text("Inner Content View1")
            .background(Color.red)
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(contentView: InnerContentView())
    }
}
