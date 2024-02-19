//
//  TaskCell.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet weak var completedImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    func configure(with task: Task) {
        titleLabel.text = task.title
        titleLabel.textColor = task.isComplete ? .secondaryLabel : .label
        completedImageView.image = UIImage(systemName: task.isComplete ? "checkmark.circle.fill" : "circle")?.withRenderingMode(.alwaysTemplate)
        completedImageView.tintColor = task.isComplete ? .systemGreen : .systemRed 
            //.tertiaryLabel
    }

}
