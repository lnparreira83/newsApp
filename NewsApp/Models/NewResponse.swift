//
//  NewResponse.swift
//  NewsApp
//
//  Created by Lucas Parreira on 2/05/21.
//

import Foundation

// MARK: - NewResponse
struct NewsResponse: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable,Identifiable {
    let id = UUID()
    let author: String?
    let url: String?
    let source, title: String?
    let articleDescription: String?
    let image: String?
    let date: Date?

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
    
    
}

extension Article {
    static var dummyData: Article {
        .init(author: "Sean Hollister",
              url: "https://www.theverge.com/2021/5/1/22413196/valve-steam-lawsuit-wolfire-games-humble-bundle-app-store-cut-epic-apple",
              source: "The Verge",
              title: "As Epic v. Apple approaches the courtroom, Valve is getting sued over Steam too - The Verge",
              articleDescription: "As Apple gets dragged into a California court to justify its 30 percent App Store fee — and two days after Microsoft axed its 30 percent cut on PC — PC gaming giant Valve is now facing down lawsuits against its own 30 percent cut and alleged anticompetitive p…",
              image: "https://cdn.vox-cdn.com/thumbor/zyRywloomecnUDDdWi2l6kLHVnU=/0x68:1020x602/fit-in/1200x630/cdn.vox-cdn.com/assets/2127889/steam_box_header_alt.jpg",
              date: Date())
    }
}
