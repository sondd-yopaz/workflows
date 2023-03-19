//
//  ViewController.swift
//  Test10
//
//  Created by đào sơn on 14/03/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iamgeView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

extension URL {
    func loadImage(completion: @escaping (_ image: UIImage?) -> ()) {
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: self)
                    DispatchQueue.main.async {
                        completion(UIImage(data: data))
                    }
            } catch let error {
                DispatchQueue.main.async {
                    completion(nil)
                }
                print(error.localizedDescription)
            }
        }
    }
}

