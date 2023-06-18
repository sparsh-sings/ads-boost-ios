// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let packageName = "AdsBoost"

let package = Package(
    name: packageName,
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: packageName,
            targets: [packageName]),
    ],
    dependencies: [
            .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", from: "10.3.0")
    ],
    targets: [
        .binaryTarget(name: packageName,
                      path: "Artifacts/AdsBoost.xcframework")
    ]
)
