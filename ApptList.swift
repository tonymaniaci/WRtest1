//
//  ApptList.swift
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

import UIKit
import Alamofire
import SwiftyJSON


class ApptList {
    var theApptList: [Appointment] = []
    
    init() {
        let url_host = "https://ws.itelcompanies.com/itel1.9/"
        let url_php = "/patientwaitingroom.php";
        let url_params = "";
        let url = url_host + url_php + url_params;
        
        Alamofire.request(.GET, url, parameters: ["attendee_id": "moomarli"])
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                
                if let value = response.result.value {
                   let json = JSON(value)
                    print("JSON: \(json)")
                    let appointments = json["appointments"]
                    print("appointments: \(appointments)")
                    
                    for item in appointments.arrayValue {
                        let newAppt = Appointment()
                        newAppt.schedule_id     =   item["schedule_id"].stringValue
                        newAppt.doctor_id       =   item["host_id"].stringValue
                        newAppt.doctor_name     =   item["doctor_name"]["name"].stringValue
                        newAppt.sched_time      =   item["sched_tm"]["formatted_tm"].stringValue
                        
                        newAppt.tokapikey       =   item["tokapikey"].stringValue
                        newAppt.toksessionid    =   item["toksessionid"].stringValue
                        
                        print("newAppt.schedule_id: \(newAppt.schedule_id)")
                        print("newAppt.doctor_id: \(newAppt.doctor_id)")
                        print("newAppt.doctor_name: \(newAppt.doctor_name)")
                        print("newAppt.sched_time: \(newAppt.sched_time)")
                        print("newAppt.tokapikey: \(newAppt.tokapikey)")
                        print("newAppt.toksessionid: \(newAppt.toksessionid)")
                        
                        
                        self.theApptList.append(newAppt)

                    }
                
                    
                }
        }
        
    }
    
}

