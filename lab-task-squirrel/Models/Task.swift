//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite local restaurant 🍝",
                 description: "What type of food do you enjoy?"),
            Task(title: "Your favorite local coffee ☕️",
                 description: "How often do you get coffee here?"),
            Task(title: "Your go to location to visit 🇯🇲",
                 description: "What is the first thing you do upon arrival?"),
            Task(title: "Your favorite hiking spot 🥾",
                 description: "Where is the best places to enjoy nature?")
        ]
    }
}
