// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "ContactsChangeNotifier",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(name: "ContactsChangeNotifier", targets: ["ContactsChangeNotifier", "ContactStoreChangeHistory"]),
    ],
    targets: [
        .target(
            name: "ContactStoreChangeHistory"
        ),
        .target(
            name: "ContactsChangeNotifier",
            dependencies: ["ContactStoreChangeHistory"],
            resources: [.copy("PrivacyInfo.xcprivacy")]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
