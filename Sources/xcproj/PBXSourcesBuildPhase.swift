import Foundation

/// This is the element for the sources compilation build phase.
final public class PBXSourcesBuildPhase: PBXBuildPhase {

    public override var buildPhase: BuildPhase {
        return .sources
    }

}

extension PBXSourcesBuildPhase: PlistSerializable {

    // MARK: - PlistSerializable
    
    func plistKeyAndValue(proj: PBXProj, reference: String) -> (key: CommentedString, value: PlistValue) {
        var dictionary: [CommentedString: PlistValue] = plistValues(proj: proj, reference: reference)
        dictionary["isa"] = .string(CommentedString(PBXSourcesBuildPhase.isa))
        return (key: CommentedString(reference, comment: "Sources"), value: .dictionary(dictionary))
    }
    
}
