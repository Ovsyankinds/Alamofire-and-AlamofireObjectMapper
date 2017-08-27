//
//  Model.swift
//  Corthage&Alamofire
//
//  Created by Ovsyankinds on 26/08/2017.
//  Copyright © 2017 Ovsyankinds. All rights reserved.
//

import UIKit
import ObjectMapper

class Model: Mappable {
    /*var mul: Double?
    var pow: Double?*/
    
    var mul: String?
    var pow: String?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        /*mul <- map["mul2"]
        pow <- map["pow2"]*/
        
        mul <- map["name"]
        pow <- map["homeworld"]
    }
}
