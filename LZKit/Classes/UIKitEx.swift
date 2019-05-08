//
//  UIKitEx.swift
//  LZKit
//
//  Created by 张路 on 2019/5/8.
//

import Foundation
import UIKit

public protocol StoryBoardLoadable {
    
}

extension StoryBoardLoadable {
    public static func loadVCFromStoryBoard() -> Self {
        return UIStoryboard(name: "\(self)", bundle: nil).instantiateViewController(withIdentifier: "\(self)") as! Self
    }
}

public protocol NibLoadable {
    
}

extension NibLoadable {
    public static func loadViewFromNib() -> Self {
        return Bundle.main.loadNibNamed("\(self)", owner: nil, options: nil)?.first as! Self
    }
}


public protocol RegisterCellFromNib {
    
}

extension RegisterCellFromNib {
    
    public static var identifiy: String {
        return "\(self)"
    }
    
    public static var nib: UINib? {
        return UINib.init(nibName: "\(self)", bundle: nil)
    }
}

extension UITableView {
    
    public func lz_registerNibCell<T: UITableViewCell>(cell: T.Type) where T: RegisterCellFromNib {
        if let cellNib = T.nib {
            self.register(cellNib, forCellReuseIdentifier: T.identifiy)
        } else {
            self.register(cell, forCellReuseIdentifier: "123")
        }
        
    }
    
    public func lz_dequeueReusableCell<T: UITableViewCell>() -> T where T: RegisterCellFromNib {
        return self.dequeueReusableCell(withIdentifier: T.identifiy) as! T
    }
}

extension UIView {
    
    public var x: CGFloat {
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin.x
        }
    }
    
    public var y: CGFloat {
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin.y
        }
    }
    
    public var width: CGFloat {
        set {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
        get {
            return self.frame.size.width
        }
    }
    
    public var height: CGFloat {
        set {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
        get {
            return self.frame.size.height
        }
    }
    
}

