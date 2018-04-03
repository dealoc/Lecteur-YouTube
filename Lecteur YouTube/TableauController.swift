//
//  TableauController.swift
//  Lecteur YouTube
//
//  Created by Dea-loC on 03/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var chansons = [Chanson]()
    
    let idenifiantCell = "ChansonCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        ajouterChanson()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chanson = chansons[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: idenifiantCell) as? ChansonCell {
            cell.creerCell(chanson)
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    func ajouterChanson() {
        chansons = [Chanson]()
        let gta = Chanson(artiste: "Dea-loC", titre: "The ballad of Trevor // GTA V (PC) // 1080p-60fps // Dea-loC DESIGN", code: "9DgbB_A_CTo")
        chansons.append(gta)
        let cache = Chanson(artiste: "Squeezie", titre: "LE PLUS GROS CACHE-CACHE DE FRANCE ! (ft Carlito, Maxenss, Léo)", code: "jq_8rxMaltw")
        chansons.append(cache)
        let lasalle = Chanson(artiste: "LaSalle", titre: "MEGA RAMPE", code: "cTBzp2VIGFI")
        chansons.append(lasalle)
        let allocine = Chanson(artiste: "Allo Cine", titre: "Les (Graves?) ERREURS du ROI LION - Faux raccord REUPLOAD", code: "brZCcV4GO24")
        chansons.append(allocine)
        let troisd = Chanson(artiste: "Filament forge", titre: "3D Printed 15'' Hulk [Time-Lapse] AirBrush+Jeans | Now ARTFX Statue", code: "X_s_vmWMToU")
        chansons.append(troisd)
        let cyril = Chanson(artiste: "CYR!L", titre: "LE COQUELICOT , LA POÊLE ET LE TOP 1", code: "CyZBpEu6hjQ")
        chansons.append(cyril)
        let emb = Chanson(artiste: "E.M.B", titre: "VOYONS VOIR ... TOUTES LES SORTIES NINTENDO SWITCH DU MOIS: AVRIL 2018 !", code: "o7od2dEEVuM")
        chansons.append(emb)
        let defaite = Chanson(artiste: "Orelsan", titre: "OrelSan - Défaite de famille [CLIP OFFICIEL]", code: "wRQEfN8PGYI")
        chansons.append(defaite)
        let lorenzo =  Chanson(artiste: "Lorenzo", titre: "Lorenzo - Carton Rouge (Clip Officiel)", code: "fFX5Co_6ay0")
        chansons.append(lorenzo)
        let vald = Chanson(artiste: "Vald", titre: "Vald - Désaccordé", code: "kutk2XHEZNU")
        chansons.append(vald)
        
        //ReloaodData recharger les donnees et mettre a jour dans les tables views
        tableView.reloadData()
    }
    
}
