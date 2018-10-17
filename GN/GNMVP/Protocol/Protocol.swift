//
//  Protocol.swift
//  GN
//
//  Created by Xianxiangdaishu on 2018/10/17.
//  Copyright © 2018 XXDS. All rights reserved.
//

import Foundation

protocol PresenterProtocol: class {
    
    associatedtype  T
    var tableArray: [T]  { get set }
    func getData()

}
