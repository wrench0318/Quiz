//
//  UILabelExtension.swift
//  Quiz
//
//  Created by 土橋正晴 on 2019/05/13.
//  Copyright © 2019 m.dobashi. All rights reserved.
//

import Foundation
import UIKit



extension UILabel {
    
    public convenience init(title: String?, font: UIFont, textColor: UIColor?, backgroundColor: UIColor?, textAlignment: NSTextAlignment, numberOfLines: Int) {
        self.init()
        
        self.text = title
        self.font = font
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self.textAlignment = textAlignment
        self.numberOfLines = numberOfLines
    }
    
    func labelHeight(multiplier: CGFloat, cornerRadius: CGFloat? = nil) {
        self.bounds.size.height = UIScreen.main.bounds.height * multiplier
        if let _cornerRadius = cornerRadius {
            self.layer.cornerRadius = self.bounds.height / _cornerRadius
            self.clipsToBounds = true
        }
    }
    
    func labelHeight(height: CGFloat, cornerRadius: CGFloat? = nil) {
        self.bounds.size.height = height
        if let _cornerRadius = cornerRadius {
            self.layer.cornerRadius = self.bounds.height / _cornerRadius
            self.clipsToBounds = true
        }
    }
}