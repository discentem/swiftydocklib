import Cocoa

// let key = "persistent-apps" as CFString
// let domain = "com.apple.dock" as CFString
// print(CFPreferencesCopyAppValue(key,
//                                 domain))

class Dock {

    init() {
      let sections = ["persistent-apps", "persistent-others"]
      var sectionDict = Dictionary<String, Array<Dictionary<String, Any>>>()
      for section in sections {
        guard let apps = UserDefaults(suiteName: "com.apple.dock")?
                         .array(forKey: section)
                         as? [[String: Any]] else {
                                                    print("No \(section) apps found")
                                                    return
                                                  }

        sectionDict[section] = apps
        print(sectionDict)
      }
    }
}
let dock = Dock()
