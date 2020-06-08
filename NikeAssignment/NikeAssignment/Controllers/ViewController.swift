//
//  ViewController.swift
//  NikeAssignment
//
//  Created by sai kumar madasu on 4/30/20.
//  Copyright © 2020 sai kumar madasu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var itunesTableView = UITableView()
    var data: [Data] = []
    
    struct Cells {
        static let customiTunesTVCell = "CustomiTunesTVCell"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        data = fetchData()
        setUpTableView()
    }
    
    func setUpTableView() {
        itunesTableView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        itunesTableView.delegate = self
        itunesTableView.dataSource = self
        itunesTableView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
       // itunesTableView.pin(to: view)
        itunesTableView.register(CustomiTunesTVCell.self, forCellReuseIdentifier: Cells.customiTunesTVCell)
        view.addSubview(itunesTableView)
    }

}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = itunesTableView.dequeueReusableCell(withIdentifier: Cells.customiTunesTVCell) as! CustomiTunesTVCell
        let iTuneData = data[indexPath.row]
        cell.set(data: iTuneData)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140.0
    }
    
}

extension ViewController {
    
    func fetchData() -> [Data] {
        let iTunes1 = Data(albumImage: Images.dice1 , albumTitle: "Random1", albumArthur: "SubTitile1")
        let iTunes2 = Data(albumImage: Images.dice1, albumTitle: "Random1", albumArthur: "SubTitile1")
        let iTunes3 = Data(albumImage: Images.dice1, albumTitle: "Random1", albumArthur: "SubTitile1")
        let iTunes4 = Data(albumImage: Images.dice1, albumTitle: "Random1", albumArthur: "SubTitile1")
      return [iTunes1, iTunes2,iTunes3, iTunes4]
    }
    
    
}
