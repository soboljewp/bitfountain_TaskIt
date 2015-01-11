//
//  Date.swift
//  TaskIt
//
//  Created by Patrick Dawson on 11.01.15.
//  Copyright (c) 2015 Patrick Dawson. All rights reserved.
//

import Foundation

class Date {
    
    class func from (#year: Int, month: Int, day: Int) -> NSDate {
        
        var components = NSDateComponents()
        components.year = year
        components.month = month
        components.day = day
        
        var gregorianCalender = NSCalendar(identifier: NSGregorianCalendar)
        var date = gregorianCalender?.dateFromComponents(components)
        
        return date!
    }
    
    class func toString(#date: NSDate) -> String {
        
        let dateStringFormater = NSDateFormatter()
        dateStringFormater.dateFormat = "yyyy-MM-dd"
        let dateString = dateStringFormater.stringFromDate(date)
        
        return dateString
    }
}