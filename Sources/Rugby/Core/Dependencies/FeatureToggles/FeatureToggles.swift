import Foundation
import RugbyFoundation

final class FeatureToggles: IFeatureToggles {
    private let RUGBY_KEEP_HASH_YAMLS = "RUGBY_KEEP_HASH_YAMLS"
    private let RUGBY_PRINT_MISSING_BINARIES = "RUGBY_PRINT_MISSING_BINARIES"

    var keepHashYamls: Bool {
        ProcessInfo.processInfo.environment[RUGBY_KEEP_HASH_YAMLS].isEnabled
    }

    var printMissingBinaries: Bool {
        ProcessInfo.processInfo.environment[RUGBY_PRINT_MISSING_BINARIES].isEnabled
    }
}

private extension Optional where Wrapped == String {
    var isEnabled: Bool {
        switch self {
        case "YES", "true", "1":
            return true
        default:
            return false
        }
    }
}
