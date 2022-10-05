//
//  ViewController.swift
//  Navigation_LysenskaiaE
//
//  Created by ElenaL on 05.10.2022.
//

import UIKit

class FeedViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            let post = Post(title: "Мой Пост")
            view.backgroundColor = .purple
            let uiButton = UIButton()
            self.view.addSubview(uiButton)
            uiButton.setTitle("Перейти к посту", for: .normal)
            uiButton.translatesAutoresizingMaskIntoConstraints = false

            uiButton.addAction(UIAction(handler: {_ in
                let vc = PostViewController()
                vc.titlePost = post.title
                self.navigationController?.pushViewController(vc, animated: true)
            }), for: .touchUpInside)

            NSLayoutConstraint.activate([
                uiButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                uiButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                uiButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                uiButton.heightAnchor.constraint(equalToConstant: 30)
            ])
    }


}

