//
//  BookView.swift
//  BookMark
//
//  Created by ZHANG on 02/12/2021.
//

import SwiftUI

struct BookView: View {
    
    @State var searchText = ""
    let myFruits = [
             "Apple π", "Banana π", "Blueberry π«", "Strawberry π", "Avocado π₯", "Cherries π", "Mango π₯­", "Watermelon π", "Grapes π", "Lemon π"
         ]
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("LightGray"))
                    HStack {
                        Image (systemName: "magnifyingglass")
                        TextField ("Search ..", text: $searchText)
                        .foregroundColor(.gray)
                        β’padding(.leading, 13)
                }
                    .frame (height: 40)
                    .cornerRadius (13)
                    .padding()
               List (myFruits, id: \.self) { fruit in
                    Text(fruit)
                }
                    .listStyle(GroupedListStyle())
                    .navigationTitle("MyFruits")
                }
            }
        }
    }
}
struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView()
    }
}
