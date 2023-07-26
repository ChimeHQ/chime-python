import Foundation

import ChimeKit

@MainActor
public final class PythonExtension {
	private let lspService: LSPService

	public init(host: any HostProtocol) {
		self.lspService = LSPService(host: host,
									 executableName: "pylsp")
	}
}

extension PythonExtension: ExtensionProtocol {
	public var configuration: ExtensionConfiguration {
		get throws {
			ExtensionConfiguration(contentFilter: [.uti(.pythonScript)])
		}
	}
	
	public var applicationService: ApplicationService {
		return lspService
	}
}
