

import Foundation
import UIKit


class DetailsViewController: UIViewController{
    
    var message: String?
    let messageLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstrents()
    }
    
    private func setupUI(){
        view.backgroundColor = .white
        view.addSubview(messageLabel)
        messageLabel.text = message
        messageLabel.textAlignment = .center
        
    }
    
    func setupConstrents(){
        messageLabel.snp.makeConstraints{make in
            make.center.equalToSuperview()
        }
    }
}

