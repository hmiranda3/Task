//
//  Task.swift
//  Task
//
//  Created by Habib Miranda on 5/25/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import CoreData

@objc(Task)
class Task: NSManagedObject {

    convenience init?(name: String, notes: String? = nil, due: NSDate? = nil, isComplete: Bool = false, context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        guard let entity = NSEntityDescription.entityForName("Task", inManagedObjectContext: context) else {return nil}
        self.init(entity: entity, insertIntoManagedObjectContext: context)
        
        self.name = name
        self.notes = notes
        self.due = due
    
    }
    
}
