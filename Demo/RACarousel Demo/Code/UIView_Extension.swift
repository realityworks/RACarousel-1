//
//  UIView_GradientExtension.swift
//  RACarousel Demo
//
//  Created by Piotr Suwara on 19/1/19.
//  Copyright © 2019 Piotr Suwara. All rights reserved.
//

import UIKit

extension UIView {
    func applyGradient(withColors colors: [UIColor]) {
        if let sublayers = layer.sublayers {
            let _ = sublayers.filter({ $0 is CAGradientLayer }).map({ $0.removeFromSuperlayer() })
        }
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colors.map({ $0.cgColor })
        
        backgroundColor = .clear
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    func applyScale(_ scale: CGFloat) {
        self.layer.transform = CATransform3DScale(CATransform3DIdentity, scale, scale, 1.0)
    }
}