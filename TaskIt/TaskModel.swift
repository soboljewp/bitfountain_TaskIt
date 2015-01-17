//
//  TaskModel.swift
//  TaskIt
//
//  Created by Patrick Dawson on 11.01.15.
//  Copyright (c) 2015 Patrick Dawson. All rights reserved.
//

import Foundation
import CoreData

@objc(TaskModel)
class TaskModel: NSManagedObject {

    @NSManaged var completed: NSNumber
    @NSManaged var date: NSDate
    @NSManaged var subtask: String
    @NSManaged var task: String

}
