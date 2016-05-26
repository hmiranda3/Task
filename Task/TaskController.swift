//
//  TaskController.swift
//  Task
//
//  Created by Habib Miranda on 5/25/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class TaskController {
    
    static let sharedController = TaskController()
    
    var tasks: [Task] = []
    
    var mockTasks: [Task] {
        guard let shop = Task(name: "Shop", notes: "buy groceries", due: NSDate(timeIntervalSinceNow: NSTimeInterval(4*24*60*60))),
        let washCar = Task(name: "Wash car", notes: "Make sure to use turtle wax", isComplete: true),
            let cleanHouse = Task(name: "Clean the house", due: NSDate(timeIntervalSinceNow: NSTimeInterval(24*60*60))) else { return [] }
        return [shop, washCar, cleanHouse]
    }
    
    init() {
        tasks = fetchTasks()
    }
    
    var completedTasks: [Task] {
        return tasks.filter({$0.isComplete == true})
    }
    
    var incompleteTasks: [Task] {
        return tasks.filter({$0.isComplete == false})
    }
    
    func addTask(name: String, notes: String?, due: NSDate?) {
        
    }
    
    func removeTask(task: Task) {
        
    }
    
    func updateTask(task: Task, name: String, notes: String?, due: NSDate?, isComplete: Bool) {
        
    }
    
    func saveToPersistentStore() {
        
    }
    
    func fetchTasks() -> [Task] {
        return mockTasks
    }
}

//
//Create a TaskController.swift file and define a new TaskController class inside.
//Create a sharedController property as a shared instance.

//Add a tasks Array property with an empty default value.

//Add a completedTasks computed Array property that returns only complete tasks.
//note: Use a filter function on the tasks array
//Add an incompleteTasks computed Array property that returns only incomplete tasks.
//note: Use a filter function on the tasks array
//Create method signatures for addTask(name: String, notes: String?, due: NSDate?), removeTask(task: Task), updateTask(task: Task, name: String, notes: String?, due: NSDate?, isComplete: Bool), saveToPersistentStore(), and fetchTasks() -> [Task].
