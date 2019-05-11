//
//  QuizModel.swift
//  Quiz
//
//  Created by 土橋正晴 on 2019/01/24.
//  Copyright © 2019 m.dobashi. All rights reserved.
//

import Foundation
import RealmSwift

class QuizModel:Object {
    @objc dynamic var id:String = ""
    @objc dynamic var quizTitle:String = ""
    @objc dynamic var trueAnswer:String = ""
    @objc dynamic var falseAnswer1:String = ""
    @objc dynamic var falseAnswer2:String = ""
    @objc dynamic var falseAnswer3:String = ""
    @objc dynamic var displayFlag:String = ""
}


