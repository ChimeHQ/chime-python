// swift-tools-version: 5.5

import PackageDescription

let package = Package(
	name: "ChimePython",
	platforms: [.macOS(.v11)],
	products: [
		.library(name: "ChimePython", targets: ["ChimePython"]),
	],
	dependencies: [
		.package(url: "https://github.com/ChimeHQ/ChimeKit", from: "0.1.1"),
	],
	targets: [
		.target(name: "ChimePython", dependencies: ["ChimeKit"]),
		.testTarget(name: "ChimePythonTests", dependencies: ["ChimePython"]),
	]
)
