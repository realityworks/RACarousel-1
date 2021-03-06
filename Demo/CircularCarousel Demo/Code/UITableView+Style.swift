//
//  UITableView+Style.swift
//  CircularCarousel Demo
//
//  Created by Piotr Suwara on 2/2/19.
//  Copyright © 2019 Piotr Suwara. All rights reserved.
//

import UIKit

extension UITableView {
    enum DetailStyle {
        case carousel
        case primary
    }
    
    func style(withDetail style: UITableView.DetailStyle) {
        switch style {
        case .carousel:
            separatorColor = ViewConstants.Colors.tableViewSeperator
            separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            cellLayoutMarginsFollowReadableWidth = false
            isScrollEnabled = false
            allowsSelection = false
            
        case .primary:
            separatorColor = ViewConstants.Colors.tableViewSeperator
            separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            cellLayoutMarginsFollowReadableWidth = false
            backgroundColor = .clear
            allowsSelection = false
        }
    }
}
