// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "tta-cpp-binary-xcframework",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v14),
	],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "tta-cpp",
			targets: [
				"tta-cpp",
			]),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.binaryTarget(
			name: "tta-cpp",
			url: "https://github.com/sbooth/tta-cpp-binary-xcframework/releases/download/0.1.0/tta-cpp.xcframework.zip",
			checksum: "7a71d38b2186530298e431d529cf6b74180425d1ff6d4823dd6a4474168cb782"),
	]
)
