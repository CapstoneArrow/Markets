//
//  MarketItem.swift
//  Markets
//
//  Created by Andy on 5/9/24.
//

import SwiftUI

struct RegionItem: View {
    var smallTitleName: String
    
    var body: some View {
        VStack {
            NavigationLink(destination: MarketListView(titleOfRegion: smallTitleName)) {
                #if os(iOS)
                VStack(alignment: .leading) {
                    Image(smallTitleName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 155, height: 230)
                        .cornerRadius(10)
                        
                    Text(smallTitleName)
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(.primary)
                }
                #endif
                
                #if os(visionOS)
                VStack {
                    Image(smallTitleName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 155, height: 230)
                        .clipShape(Circle())
                        
                    Text(smallTitleName)
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(.primary)
                        .padding()
                }
                #endif
            }
        }
        .padding(.leading, 15)
    }
}

#Preview {
    RegionItem(smallTitleName: "서울특별시")
}
