//
//  ExpensesModel.swift
//  my expenses
//
//  Created by Fatma Alarbash on 24/08/2022.
//

import SwiftUI

struct ExpensesModel: Identifiable {
    let id = UUID()
    var store : String
    var paid : Double
    var profileImage : String
    var purchases : [String]
}
var expensesArray = [ ExpensesModel(store: "H&M", paid: 5.0, profileImage: "h&m", purchases:["skirt","",""])
                      ,ExpensesModel(store: "max", paid: 3.5, profileImage: "max", purchases:["T-shirt","",""])
                      ,ExpensesModel(store: "MINISO", paid: 5.0, profileImage: "miniso", purchases:["notebook","bottle","lunch box"])
                      ,ExpensesModel(store: "Bath and body works", paid: 11.0, profileImage: "bath", purchases:["perfume","candle",""])
]
