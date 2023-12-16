//
//  SubListViewController.swift
//  Subscriptions
//
//  Created by Robert Kotrutsa on 10.11.2023.
//

import UIKit

class SubListViewController: UIViewController {
    
    // MARK: - Properties
    
    var filteredSubscriptions: [Subscription] = []
    
    var originalSubList: [Subscription] = []
    
    var subList: [Subscription] = [
        Subscription(
            subType: .Netflix,
            subPrices: [4.99, 7.49, 9.99],
            additionalInformation: [
                "Basic:".localized() +
                "\n" +
                "\n▶ Unlimited ad-free movies, TV shows, and mobile games".localized() +
                "\n▶ Watch on 1 supported device at a time".localized() +
                "\n▶ Watch in HD".localized() +
                "\n▶ Download on 1 supported device at a time".localized(),
                                    
                "Standard:".localized() +
                "\n" +
                "\n▶ Unlimited ad-free movies, TV shows, and mobile games".localized() +
                "\n▶ Watch on 2 supported devices at a time".localized() +
                "\n▶ Watch in Full HD".localized() +
                "\n▶ Download on 2 supported devices at a time".localized() +
                "\n▶ Option to add 1 extra member who doesn't live with you".localized(),
                                    
                "Premium:".localized() +
                "\n" +
                "\n▶ Unlimited ad-free movies, TV shows, and mobile games".localized() +
                "\n▶ Watch on 4 supported devices at a time".localized() +
                "\n▶ Watch in Ultra HD".localized() +
                "\n▶ Download on 6 supported devices at a time".localized() +
                "\n▶ Option to add up to 2 extra members who don't live with you".localized() +
                "\n▶ Netflix spatial audio".localized()
            ]
        ),
        Subscription(
            subType: .Google,
            subPrices: [1.99, 2.99, 9.99],
            additionalInformation: [
                "Basic:".localized() +
                "\n" +
                "\n▶ 100 GB of storage".localized() +
                "\n▶ Access to Google experts".localized() +
                "\n▶ Share with up to 5 others".localized() +
                "\n▶ More Google Photos editing features".localized() +
                "\n▶ Extra member benefits".localized() +
                "\n▶ Monitor the dark web".localized(),
                
                "Standard:".localized() +
                "\n" +
                "\n▶ 200 GB of storage".localized() +
                "\n▶ Access to Google experts".localized() +
                "\n▶ Share with up to 5 others".localized() +
                "\n▶ More Google Photos editing features".localized() +
                "\n▶ Extra member benefits".localized() +
                "\n▶ Monitor the dark web".localized(),
                
                "Premium:".localized() +
                "\n" +
                "\n▶ 2 TB of storage".localized() +
                "\n▶ Access to Google experts".localized() +
                "\n▶ Share with up to 5 others".localized() +
                "\n▶ More Google Photos editing features".localized() +
                "\n▶ Extra member benefits".localized() +
                "\n▶ Monitor the dark web".localized()
            ]
        ),
        Subscription(
            subType: .iCloud,
            subPrices: [0.99, 2.99, 10.99, 32.99, 64.99],
            additionalInformation: [
                "iCloud+ with 50 GB storage:".localized() +
                "\n" +
                "\n▶ 50 GB of storage".localized() +
                "\n▶ iCloud Private Relay".localized() +
                "\n▶ Hide My Email".localized() +
                "\n▶ Custom Email Domain".localized() +
                "\n▶ HomeKit Secure Video support for one camera".localized() +
                "\n▶ Share everything with up to five other family members".localized(),
                    
                "iCloud+ with 200 GB storage:".localized() +
                "\n" +
                "\n▶ 200 GB of storage".localized() +
                "\n▶ iCloud Private Relay".localized() +
                "\n▶ Hide My Email".localized() +
                "\n▶ Custom Email Domain".localized() +
                "\n▶ HomeKit Secure Video support for up to five cameras".localized() +
                "\n▶ Share everything with up to five other family members".localized(),
                
                "iCloud+ with 2 TB storage:".localized() +
                "\n" +
                "\n▶ 2 TB of storage".localized() +
                "\n▶ iCloud Private Relay".localized() +
                "\n▶ Hide My Email".localized() +
                "\n▶ Custom Email Domain".localized() +
                "\n▶ HomeKit Secure Video support for an unlimited number of cameras".localized() +
                "\n▶ Share everything with up to five other family members".localized(),
                
                "iCloud+ with 6 TB storage:".localized() +
                "\n" +
                "\n▶ 6 TB of storage".localized() +
                "\n▶ iCloud Private Relay".localized() +
                "\n▶ Hide My Email".localized() +
                "\n▶ Custom Email Domain".localized() +
                "\n▶ HomeKit Secure Video support for an unlimited number of cameras".localized() +
                "\n▶ Share everything with up to five other family members".localized(),
                
                "iCloud+ with 12 TB storage:".localized() +
                "\n" +
                "\n▶ 12 TB of storage".localized() +
                "\n▶ iCloud Private Relay".localized() +
                "\n▶ Hide My Email".localized() +
                "\n▶ Custom Email Domain".localized() +
                "\n▶ HomeKit Secure Video support for an unlimited number of cameras".localized() +
                "\n▶ Share everything with up to five other family members".localized()
            ]
        ),
        Subscription(
            subType: .AppleMusic,
            subPrices: [5.99, 10.99, 16.99],
            additionalInformation: [
                "Student:".localized() +
                "\n" +
                "\n▶ 100 million songs and more than 30,000 expert-curated playlists".localized() +
                "\n▶ Request any track, album, playlist, or station simply by asking Siri or with Type to Siri".localized() +
                "\n▶ Free trial with no commitment".localized() +
                "\n▶ Stream ad-free music".localized() +
                "\n▶ Original shows, concerts, and exclusives — and live and on‑demand radio stations hosted by artists".localized() +
                "\n▶ Available on Apple devices".localized() +
                "\n▶ The Apple Music Classical app — featuring the largest classical catalog in the world".localized() +
                "\n▶ Available on other supported devices".localized() +
                "\n▶ Spatial Audio with Dolby Atmos".localized() +
                "\n▶ Full catalog in lossless audio".localized() +
                "\n▶ Apple Music Sing, with beat‑by-beat lyrics and adjustable vocals".localized() +
                "\n▶ Download 100,000 songs to your library, access your entire library from any device, and listen online or off".localized() +
                "\n▶ See what your friends are listening to".localized(),
                
                "Individual:".localized() +
                "\n" +
                "\n▶ 100 million songs and more than 30,000 expert-curated playlists".localized() +
                "\n▶ Request any track, album, playlist, or station simply by asking Siri or with Type to Siri".localized() +
                "\n▶ Free trial with no commitment".localized() +
                "\n▶ Stream ad-free music".localized() +
                "\n▶ Original shows, concerts, and exclusives — and live and on‑demand radio stations hosted by artists".localized() +
                "\n▶ Available on Apple devices".localized() +
                "\n▶ The Apple Music Classical app — featuring the largest classical catalog in the world".localized() +
                "\n▶ Available on other supported devices".localized() +
                "\n▶ Spatial Audio with Dolby Atmos".localized() +
                "\n▶ Full catalog in lossless audio".localized() +
                "\n▶ Apple Music Sing, with beat‑by-beat lyrics and adjustable vocals".localized() +
                "\n▶ Download 100,000 songs to your library, access your entire library from any device, and listen online or off".localized() +
                "\n▶ See what your friends are listening to".localized(),
                
                "Family:".localized() +
                "\n" +
                "\n▶ 100 million songs and more than 30,000 expert-curated playlists".localized() +
                "\n▶ Request any track, album, playlist, or station simply by asking Siri or with Type to Siri".localized() +
                "\n▶ Free trial with no commitment".localized() +
                "\n▶ Stream ad-free music".localized() +
                "\n▶ Original shows, concerts, and exclusives — and live and on‑demand radio stations hosted by artists".localized() +
                "\n▶ Available on Apple devices".localized() +
                "\n▶ The Apple Music Classical app — featuring the largest classical catalog in the world".localized() +
                "\n▶ Available on other supported devices".localized() +
                "\n▶ Spatial Audio with Dolby Atmos".localized() +
                "\n▶ Full catalog in lossless audio".localized() +
                "\n▶ Apple Music Sing, with beat‑by-beat lyrics and adjustable vocals".localized() +
                "\n▶ Download 100,000 songs to your library, access your entire library from any device, and listen online or off".localized() +
                "\n▶ See what your friends are listening to".localized() +
                "\n▶ Unlimited access for up to six people".localized() +
                "\n▶ Personal music library for each family member".localized() +
                "\n▶ Personalized recommendations for each family member".localized()
            ]
        ),
        Subscription(
            subType: .AppleTV,
            subPrices: [4.99],
            additionalInformation: [
                "▶ 7 days free, then 4.99 US$/month".localized() +
                "\n▶ Share Apple TV+ with your family".localized()
            ]
        ),
        Subscription(
            subType: .AppleArcade,
            subPrices: [6.99],
            additionalInformation: [
                "▶ Free 1 month trial".localized() +
                "\n▶ Unlimited access to 200+ incredibly fun games, with more added all the time".localized() +
                "\n▶ No ads".localized() +
                "\n▶ No interruptions".localized() +
                "\n▶ No in-app purchases".localized() +
                "\n▶ Play online, offline, and across your favorite Apple devices".localized() +
                "\n▶ Share your subscription with up to five people".localized()
            ]
        ),
        Subscription(
            subType: .AppleNews,
            subPrices: [0.00, 12.99],
            additionalInformation: [
                    """
                    
                    Apple News (Always free):
                    
                    - Top stories chosen by editors, personalized for you
                    - My Sports with scores, standings, and highlights
                    - Apple News Today and In Conversation 🎧
                    - Local news
                    - Private and secure reading
                    - CarPlay
                    """,
                    """
                    
                    Apple News+:
                    
                    - 1 month free
                    - Hundreds of magazines and leading newspapers
                    - Apple News+ audio stories 🎧
                    - Local news from top regional sources
                    - Sports coverage from local and premium publications
                    - Reading online and off across devices
                    - Cover-to-cover magazines
                    - Family Sharing for up to six
                    - Top stories chosen by editors, personalized for you
                    - My Sports with scores, standings, and highlights
                    - Apple News Today and In Conversation 🎧
                    - Local news
                    - Private and secure reading
                    - CarPlay
                    """
            ]
        ),
        Subscription(
            subType: .AppleFitness,
            subPrices: [9.99],
            additionalInformation: [
                    """
                    
                    - 1 month free
                    - Find it in the Fitness app. Available with iPhone, iPad, Apple TV, and Apple Watch.
                    - 12 workout types, everything from HIIT to Yoga. Meditation, too.
                    - From beginner to advanced. And 5 to 45 minutes.
                    - Custom Plans automatically built for you.
                    - Supercharge your experience with real-time metrics from Apple Watch.
                    """
            ]
        ),
        Subscription(
            subType: .AppleOne,
            subPrices: [12.95, 16.95],
            additionalInformation: [
                    """
                    
                    Individual:
                    
                    - iCloud+ 50 GB ($0.99/mo.)
                    - TV+ ($6.99/mo.)
                    - Music ($6.49/mo.)
                    - Arcade ($6.99/mo.)
                    """,
                    """
                    
                    Family:
                    
                    - iCloud+ 200 GB ($2.99/mo.)
                    - TV+ ($6.99/mo.)
                    - Music ($9.99/mo.)
                    - Arcade ($6.99/mo.)
                    """
            ]
        ),
        Subscription(
            subType: .Spotify,
            subPrices: [2.49, 4.99, 6.49, 7.99],
            additionalInformation: [
                    """
                    
                    Premium Student:
                    
                    - 1 verified Premium account
                    - Discount for students who meet the conditions
                    - Cancel anytime
                    """,
                    """
                    
                    Premium Individual:
                    
                    - 1 Premium account
                    - Cancel anytime
                    """,
                    """
                    
                    Premium Duo:
                    
                    - 2 Premium accounts
                    - Cancel anytime
                    """,
                    """
                    
                    Premium Family:
                    
                    - 6 Premium accounts
                    - Blocking music with age restrictions
                    - Cancel anytime
                    """
            ]
        ),
        Subscription(
            subType: .XboxGamePass,
            subPrices: [9.99, 16.99],
            additionalInformation: [
                    """
                    
                    PC:
                    
                    - Get your first 14 days for $1, then $9.99/mo.
                    - Hundreds of high-quality games on PC
                    - New games on day one
                    - Member deals & discounts
                    - EA Play membership
                    """,
                    """
                    
                    Ultimate:
                    
                    - Get your first 14 days for $1, then $16.99/mo.
                    - Hundreds of high-quality games on console, PC, and cloud
                    - New games on day one
                    - Member deals, discounts, and Perks
                    - Online console multiplayer
                    - EA Play membership
                    """
            ]
        ),
        Subscription(
            subType: .PlayStationNow,
            subPrices: [9.99, 14.99, 17.99],
            additionalInformation: [
                    """
                    
                    Essential:
                    
                    - Monthly games
                    - Online multiplayer
                    - Exclusive discounts
                    - Exclusive content
                    - Cloud storage
                    - Share Play
                    - Game Help
                    """,
                    """
                    
                    Extra:
                    
                    - Monthly games
                    - Online multiplayer
                    - Exclusive discounts
                    - Exclusive content
                    - Cloud storage
                    - Share Play
                    - Game Help
                    - Game Catalog
                    - Ubisoft+ Classics
                    """,
                    """
                    
                    Premium:
                    
                    - Monthly games
                    - Online multiplayer
                    - Exclusive discounts
                    - Exclusive content
                    - Cloud storage
                    - Share Play
                    - Game Help
                    - Game Catalog
                    - Ubisoft+ Classics
                    - Classics Catalog
                    - Game trials
                    - Cloud streaming
                    """
            ]
        ),
        Subscription(
            subType: .Audible,
            subPrices: [7.95, 14.99],
            additionalInformation: [
                    """
                    
                    Audible plus:
                    
                    - Free 30-day trial, then $7.95 per month
                    - Originals
                    - Audiobooks
                    - Sleep tracks
                    - Meditation programs
                    - Podcasts
                    """,
                    """
                    
                    Audible premium plus:
                    
                    - Free 30-day trial, then $14.95 per month
                    - Enjoy everything Audible Plus offers plus 1 title per month from an extended selection of best sellers and new releases
                    """
            ]
        ),
        Subscription(
            subType: .iVi,
            subPrices: [2.99],
            additionalInformation: [
                    """
                    
                    - New series and movies
                    Ivy's exclusives, as well as thousands of movies and TV series from around the world
                    - Simultaneous viewing on five devices
                    Smart TV, smartphones, tablets, set-top boxes, etc
                    - Maximum image and sound quality 4K, HDR, FHD, 5.1
                    - Lack of advertising
                    does not apply to TV channels
                    - Downloading to mobile
                    more than 10,000 TV series and movies
                    """
            ]
        ),
        Subscription(
            subType: .Megogo,
            subPrices: [2.69, 2.99, 5.49],
            additionalInformation: [
                    """
                    
                    Light:
                    
                    - Number of TV channels 290
                    
                    MOVIES, SERIES, CARTOONS
                    - Number of movies 10000+
                    - 10% off on premieres
                    - Collection of movies, series, and
                    cartoons in Full HD, HDR, 3D, 4K
                    without ads
                    
                    CHANNELS
                    - Sports Channels
                    - Educational channels:
                    Discovery, History HD, MEGA HD
                    - Movie channels Comedy Central,
                    FILMBOX, [M] COMEDY HD
                    
                    AUDIOBOOKS AND PODCASTS
                    - More than 900 audiobooks in
                    the mobile app
                    """,
                    """
                    
                    Optimal:
                    
                    - Number of TV channels 380
                    
                    MOVIES, SERIES, CARTOONS
                    - Number of movies 11000+
                    - 10% off on premieres
                    - Collection of movies, series, and
                    cartoons in Full HD, HDR, 3D, 4K
                    without ads
                    - Paramount+ movie collection
                    
                    CHANNELS
                    - Sports Channels
                    - Educational channels:
                    Discovery, History HD, MEGA HD
                    - Movie channels Comedy Central,
                    FILMBOX, [M] COMEDY HD
                    - Premium channels Viasat, Cine+,
                    FOX, Eurosport and others
                    - Premium channels for children:
                    Nickelodeon, Nick Jr., Tiji
                    
                    AUDIOBOOKS AND PODCASTS
                    - More than 900 audiobooks in
                    the mobile app
                    """,
                    """
                    
                    Maximal:
                    
                    - Number of TV channels 405
                    
                    MOVIES, SERIES, CARTOONS
                    - Number of movies 15000+
                    - 10% off on premieres
                    - Collection of movies, series, and
                    cartoons in Full HD, HDR, 3D, 4K
                    without ads
                    - Paramount+ movie collection
                    - HBO's top series: "The Last of Us",
                    "Game of Thrones", "Euphoria",
                    and others
                    
                    CHANNELS
                    - Sports Channels
                    - Educational channels:
                    Discovery, History HD, MEGA HD
                    - Movie channels Comedy Central,
                    FILMBOX, [M] COMEDY HD
                    - Premium channels Viasat, Cine+,
                    FOX, Eurosport and others
                    - Premium channels for children:
                    Nickelodeon, Nick Jr., Tiji
                    
                    AUDIOBOOKS AND PODCASTS
                    - More than 900 audiobooks in
                    the mobile app
                    """
            ]
        ),
        Subscription(
            subType: .YouTube,
            subPrices: [1.59, 2.69, 3.99],
            additionalInformation: [
                    """
                    
                    Student:
                    
                    - Get 1 month free
                    - Eligible students only
                    - Annual verification required
                    """,
                    """
                    
                    Individual:
                    
                    - Get 1 month free
                    """,
                    """
                    
                    Family:
                    
                    - Get 1 month free
                    - Add up to 5 family members (ages 13+) in your household
                    """
            ]
        )
    ]
    
    // MARK: - Outlets
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var subListTableView: UITableView!
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .backgroundColorVC
        subListTableView.backgroundColor = .backgroundColorVC
        
        setupTitle()
        
        setupSearcBar()
        
        setupTableView()
        
        setupBackButton()
        
        reloadDataSubscriptions()
    }
    
    // MARK: - Private Methods
    
    private func reloadDataSubscriptions() {
        
        self.originalSubList = self.subList
        self.filteredSubscriptions = self.subList
    }
    
    private func setupSearcBar() {
        
        searchBar.placeholder = "Search Subscription".localized()
        searchBar.searchTextField.textColor = .tabBarItemAccent
        searchBar.backgroundColor = .clear
        searchBar.backgroundImage = UIImage()
        searchBar.isTranslucent = true
        searchBar.barStyle = .default
    }
    
    private func setupBackButton() {
        
        let backButton = UIBarButtonItem()
        backButton.tintColor = .tabBarItemAccent
        navigationItem.backBarButtonItem = backButton
    }
    
    private func registerTableViewCell() {
        
        let subNib = UINib(nibName: NibNames.subListCell, bundle: Bundle.main)
        subListTableView.register(subNib, forCellReuseIdentifier: NibNames.subListCell)
    }
    
    private func setupTitle() {
        
        title = DefaultValues.subListTitle
    }
    
    private func setupTableView() {
        
        subListTableView.delegate = self
        subListTableView.dataSource = self
        subListTableView.separatorStyle = .none
        
        registerTableViewCell()
    }
    
}

// MARK: UITableViewDataSource

extension SubListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { subList.count }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let index = indexPath.row
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: NibNames.subListCell, for: indexPath) as?  SubListTableViewCell else { return UITableViewCell() }
        
        cell.nameOfSubscription.text = subList[index].subType.rawValue
        cell.imageOfSubscription.image = subList[index].subType.image
        
        cell.backgroundColor = .backgroundColorVC.withAlphaComponent(0.0)
        cell.selectionStyle = .none
        
        return cell
    }
    
}

// MARK: UITableViewDelegate

extension SubListViewController: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int { 1 }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool { true }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let subPlanViewController = SubPlanViewController(nibName: NibNames.subPlanViewController, bundle: nil)
        
        let selectedSubscription = subList[indexPath.row]
        
        let currentPriceIndex = 0
        let additionalInfo = selectedSubscription.additionalInformation[currentPriceIndex]
        subPlanViewController.configureSubPlanInfoFor(subscription: selectedSubscription, additionalInfo: additionalInfo, currentPriceIndex: currentPriceIndex)
        
        navigationController?.pushViewController(subPlanViewController, animated: true)
    }
    
}

// MARK: UISearchBarDelegate

extension SubListViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText.isEmpty {
            subList = originalSubList
        } else {
            let filteredSubscriptions = originalSubList.filter { $0.subType.rawValue.lowercased().contains(searchText.lowercased()) }
            subList = filteredSubscriptions
        }
        
        subListTableView.reloadData()
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        
        originalSubList = subList
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        
        subList = originalSubList
        subListTableView.reloadData()
    }
}
