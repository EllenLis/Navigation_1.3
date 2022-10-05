//
//  PostViewController.swift
//  Navigation_LysenskaiaE
//
//  Created by ElenaL on 05.10.2022.
//

import UIKit

class PostViewController: UIViewController {

        var titlePost: String = "My Post"

        override func viewDidLoad() {
            super.viewDidLoad()

            view.backgroundColor = .systemMint
            navigationItem.title = "Пост"

            navigationItem.title = titlePost
                    
            viewdidTapButton()
        }
                
        func viewdidTapButton() {
            let barButton = UIBarButtonItem()
            barButton.image = UIImage(systemName: "info.circle")
            barButton.action = #selector(didTapButton)
            barButton.target = self
            self.navigationItem.setLeftBarButton(barButton, animated: true) }
                   
                
        @objc func didTapButton() {
            let vc = InfoViewController()
            vc.title = "Информация"
            vc.view.backgroundColor = .lightGray

            navigationController?.pushViewController(vc, animated: true)
            
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
