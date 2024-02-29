

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    let showDetailsButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(showDetailsButton)
        
        setupUI()
        setupConstrents()
        showDetailsButtonTapped()
        
    }
    
    func setupUI(){
        showDetailsButton.setTitle("Show details", for: .normal)
        showDetailsButton.setTitleColor(.white, for: .normal)
        showDetailsButton.backgroundColor = .blue
        showDetailsButton.tintColor = .white
        showDetailsButton.layer.shadowOpacity = 0.5
        showDetailsButton.layer.shadowRadius = 2.0
        showDetailsButton.addTarget(self, action: #selector(showDetailsButtonTapped), for: .touchUpInside)
        
    }
    func setupConstrents(){
        showDetailsButton.snp.makeConstraints{ make in
            make.center.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
    }
    @objc func showDetailsButtonTapped(){
        let detailsVC = DetailsViewController()
        detailsVC.message = "Welcome to details view!"
        self.navigationController?.pushViewController(detailsVC, animated: true)
        //        let detailsVC = DetailsViewController(message: "Welcome to details view!")
        //        navigationController?.pushViewController(detailsVC, animated: true)
        //    }
    }
    
}
