// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CloseChannelDependencies",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "CloseChannelDependencies",
            type: .dynamic,
            targets: ["CloseChannelDependenciesTarget"])
    ],
    dependencies: [
        .package(url: "https://github.com/stephencelis/SQLite.swift", from: "0.12.2"),
        .package(url: "https://github.com/socketio/socket.io-client-swift", from: "16.1.0"),
        .package(url: "https://github.com/Ekhoo/Device.git", from: "3.6.0"),
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.7.1"),
        .package(url: "https://github.com/TakeScoop/SwiftyRSA", from: "1.7.0"),
        .package(url: "https://github.com/adamcichy/SwiftySound", from: "1.3.0"),
        .package(url: "https://github.com/cezheng/Fuzi", from: "3.1.3"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift", from: "1.8.2")
    ],
    targets: [
        .target(
            name: "CloseChannelDependenciesTarget",
            dependencies: [
                .product(name: "CryptoSwift", package: "CryptoSwift"),
                .product(name: "Device", package: "Device"),
                .product(name: "Fuzi", package: "Fuzi"),
                .product(name: "SQLite", package: "SQLite.swift"),
                .product(name: "SnapKit", package: "SnapKit"),
                .product(name: "SocketIO", package: "socket.io-client-swift"),
                .product(name: "SwiftyRSA", package: "SwiftyRSA"),
                .product(name: "SwiftySound", package: "SwiftySound")
            ]
        )
    ]
)
