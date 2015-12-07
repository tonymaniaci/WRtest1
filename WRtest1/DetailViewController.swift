//
//  DetailViewController.swift
//  WRtest1
//
//  Created by tmaniaci on 11/30/15
//  Copyright © 2015 iTel Companies, Inc. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var doctorNameLabel: UILabel!
    @IBOutlet weak var doctorIdLabel: UILabel!
    @IBOutlet weak var scheduleTimeLabel: UILabel!
    @IBOutlet weak var scheduleIdLabel: UILabel!    
    @IBOutlet weak var tokapikeyLabel: UILabel!
    @IBOutlet weak var toksessionidLabel: UILabel!
    
    
    var detailItem: AnyObject? {
        didSet {
          }
    }

    func configureView() {
        // Update the user interface for the detail item.
        
        if let detail:AnyObject = self.detailItem {
            let myAppt:Appointment = detail as! Appointment
            doctorNameLabel.text = myAppt.doctor_name
            doctorIdLabel.text = myAppt.doctor_id
            scheduleTimeLabel.text = myAppt.sched_time
            scheduleIdLabel.text = myAppt.schedule_id
            tokapikeyLabel.text = myAppt.tokapikey
            toksessionidLabel.text = myAppt.toksessionid
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

