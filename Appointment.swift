//
//  Appointment.swift
//  WRtest1
//
//  Created by tmaniaci on 11/30/15.
//  Copyright © 2015 iTel Companies, Inc. All rights reserved.
//

/*
schedule_id = item.get("schedule_id").getAsInt();
tokapikey = item.get("tokapikey").getAsString();
toksessionid = item.get("toksessionid").getAsString();
host_id = item.get("host_id").getAsString(); //doctor_id, clinician_id

JsonObject sched_tm = item.getAsJsonObject("sched_tm");
datetime = sched_tm.get("formatted_tm").getAsString();

JsonObject doctor_name = item.getAsJsonObject("doctor_name");//todo: is this needed?
doc_full_name = doctor_name.get("name").getAsString();
*/

import Foundation

class Appointment {
    
    var schedule_id: String = ""
    var tokapikey: String = ""
    var toksessionid: String = ""
    var doctor_id: String = ""
    var sched_time: String = "" //formatted_tm
    var doctor_name: String = ""
    
}