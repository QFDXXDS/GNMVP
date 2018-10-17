//
//  GNVM.swift
//  GN
//
//  Created by Xianxiangdaishu on 2018/10/3.
//  Copyright © 2018 XXDS. All rights reserved.
//


import Foundation
import UIKit

class GNPresenter<T:PresenterProtocol> {
    
    weak var pp:T?

    init(p: T) {
        
        pp = p
    }
    func getData(page: Int, size: Int) {
        
        let req = VMReq()
        req.type = 2
        req.page = page
        req.size = size
        
        GN.HTTPRequesgt(req: req).observeValues { (rsp) in
            
            self.pp!.tableArray = Model.wrraperData(object: rsp as! Dictionary<String, Any>) as! [T.T]
            self.pp!.getData()
        }
    }
}
