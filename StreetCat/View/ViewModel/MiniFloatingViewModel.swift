//
//  MiniFloatingViewModel.swift
//  StreetCat
//
//  Created by changnam on 11/6/19.
//  Copyright © 2019 depromeet. All rights reserved.
//

import Foundation
import UIKit

class MiniFloatingViewModel {
    
    var type: FloatingViewType = .none
    var isSelected: Bool = false
    
    var didTapCatButton: ((_ sender: UIButton) -> Void)?
    var didTapHospitalButton: ((_ sender: UIButton) -> Void)?
    var didTapRestaurantButton: ((_ sender: UIButton) -> Void)?
    var didTapShelterButton: ((_ sender: UIButton) -> Void)?
    
    init() {}
    
    init(type: FloatingViewType, isSelected: Bool) {
        self.type = type
        self.isSelected = isSelected
    }
    
    func catBtnTapped(_ sender: UIButton) {
        didTapCatButton?(sender)
    }
    
    func hospitalBtnTapped(_ sender: UIButton) {
        didTapHospitalButton?(sender)
    }
    
    func restaurantBtnTapped(_ sender: UIButton) {
        didTapRestaurantButton?(sender)
    }
    
    func shelterBtnTapped(_ sender: UIButton) {
        didTapShelterButton?(sender)
    }
    
    static func contentHeight(isSelected: Bool, type: FloatingViewType) -> CGFloat {
        guard isSelected else { return .zero }

        switch type {
        case .findDirection:
            return 287
        case .around:
            return 234
        case .none:
            return 0
        }
    }
    
}
