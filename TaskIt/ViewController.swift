//
//  ViewController.swift
//  TaskIt
//
//  Created by Patrick Dawson on 06.01.15.
//  Copyright (c) 2015 Patrick Dawson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var taskArray: [Dictionary<String,String>] = []
    
    // MARK: overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let task1:Dictionary<String,String> = ["task": "Study French", "subtask": "Verbs", "date": "01/14/2014"]
        let task2:Dictionary<String,String> = ["task": "Eat Dinner", "subtask": "Burgers", "date": "01/14/2014"]
        let task3:Dictionary<String,String> = ["task": "Go to gym", "subtask": "Leg day", "date": "01/15/2014"]
        taskArray = [task1, task2, task3]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let taskDict: Dictionary = taskArray[indexPath.row]
        
        var cell: TaskCell = tableView.dequeueReusableCellWithIdentifier("myCell") as TaskCell
        
        cell.taskLabel.text = taskDict["task"]
        cell.descriptionLabel.text = taskDict["subtask"]
        cell.dateLabel.text = taskDict["date"]
        
        return cell
    }
    
    // MARK: UITableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}

