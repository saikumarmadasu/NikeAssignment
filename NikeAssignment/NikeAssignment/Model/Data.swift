//
//  Data.swift
//  NikeAssignment
//
//  Created by sai kumar madasu on 5/4/20.
//  Copyright © 2020 sai kumar madasu. All rights reserved.
//

import Foundation
import UIKit


class Data: NSObject {
    let albumImage: UIImage
    let albumTitle: String
    let albumArthur: String
    
    init(albumImage:UIImage,albumTitle: String, albumArthur:String ) {
        self.albumImage = albumImage
        self.albumTitle = albumTitle
        self.albumArthur = albumArthur
    }
}
