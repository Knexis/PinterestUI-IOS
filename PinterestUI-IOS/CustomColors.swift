//
//  CustomColors.swift
//  PinterestUI-IOS
//
//  Created by Nana Kwame Nyantakyi on 03/02/2016.
//  Copyright © 2016 6 lines of Code. All rights reserved.
//

import Foundation

import UIKit


class CustomColors {
    //let colorTop = HexColorDecoder(rgba: "##8968CD").CGColor
    //let colorBottom = HexColorDecoder(rgba: "#5D478B").CGColor
    
    let gradient: CAGradientLayer
    
    init() {
        gradient = CAGradientLayer()
    }
    
    
    func getGradient(customColors: [String], customPositions: [Double]) -> CAGradientLayer {
        
        gradient.colors    = getArrayOfColors(customColors)
        //gradient.locations = customPositions
        
        return gradient
        
    }
    
    
    private func getArrayOfColors(customColors: [String]) -> [CGColor]{
        
        var colorCollection:[CGColor] = []
        
        for var i = 0; i < customColors.count;i++ {
            
            colorCollection.append(HexColorDecoder(rgba: "\(customColors[i])").CGColor)
            
        }
        return colorCollection
    }
    
    
}