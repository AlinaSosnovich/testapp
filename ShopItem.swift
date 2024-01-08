//
//  ShopItem.swift
//  TestApp
//
//  Created by Sergei  Sosnovich on 8.01.24.
//

import SwiftUI

struct ShopItem: View {
    
    var imageName: String
    var title: String
    var price: Double
    var color: Color
    var selfIndex: Int
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(color)
                .opacity(0.25)
                .frame(width: 190, height: 270)
            VStack {
                Image(imageName)
                    .resizable()
                    .frame(width: 130, height: 130)
                Text(title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                Button() {
                    cartItems.append(shopItems[selfIndex])
                } label: {
                    Text("$\(String(format: "%.2f", 4.00))")
                        .foregroundColor(.white)
                        .frame(width: 100, height: 40)
                        .background(Color.orange)
                        
                }
                
            }
        }
    }
}

#Preview {
    ShopItem(imageName: "image1", title: "Ordina a domicilio senza\n limiti di distanza. Non è\n magia, è Moovenda!", price: 4.00, color: Color.orange, selfIndex: 0)
}
