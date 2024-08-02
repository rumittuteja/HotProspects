//
//  Prospect.swift
//  HotProspects
//
//  Created by Rumit Singh Tuteja on 6/12/24.
//

import SwiftData


// can only be used with class
// makes any changes in the objects of this class, observable to all the places where its used
@Model
class Prospect {
    var name: String
    var emailAddress: String
    var isContacted: Bool
    
    init(name: String, emailAddress: String, isContacted: Bool) {
        self.name = name
        self.emailAddress = emailAddress
        self.isContacted = isContacted
    }
}
