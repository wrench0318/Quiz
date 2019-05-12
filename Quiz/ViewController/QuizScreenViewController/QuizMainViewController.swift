//
//  QuizMainViewController.swift
//  Quiz
//
//  Created by 土橋正晴 on 2019/01/24.
//  Copyright © 2019 m.dobashi. All rights reserved.
//

import UIKit
import RealmSwift

class QuizMainViewController: UIViewController, QuizMainViewDelegate {
    
    // MARK: Properties
    private let realm:Realm = try! Realm(configuration: Realm.Configuration(schemaVersion: 1))
    private var isActiveQuiz: Bool = false
    var quizMainView:QuizMainView!
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
      
        isActiveQuiz = realm.objects(QuizModel.self).count != 0 ? true : false
        
        quizMainView = QuizMainView(frame: frame_Size(self), isActiveQuiz: isActiveQuiz)
        quizMainView.quizMainViewDelegate = self
        
        self.view.addSubview(quizMainView)
    }
    
  
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        quizMainView.removeFromSuperview()
    }
    
    // MARK: QuizMainViewDelegate
    func quizStartButtonAction() {
        if isActiveQuiz {
            let viewController:QuizScreenViewController = QuizScreenViewController()
            let navigationController:UINavigationController = UINavigationController(rootViewController: viewController)
            self.present(navigationController,animated: true, completion: nil)
        } else {
            AlertManager().alertAction(viewController: self, title: nil, message: "クイズを作成してください", handler1: { [weak self] _ in
                let viewController:QuizEditViewController = QuizEditViewController(mode: .add)
                let navigationController:UINavigationController = UINavigationController(rootViewController: viewController)
                self?.present(navigationController,animated: true, completion: nil)})
        }
    }
}

