//
//  VideoController.swift
//  Lecteur YouTube
//
//  Created by Dea-loC on 03/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import UIKit

class VideoController: UIViewController {

    var chanson: Chanson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        if chanson != nil {
            title = chanson!.titre
        }
    }


}
