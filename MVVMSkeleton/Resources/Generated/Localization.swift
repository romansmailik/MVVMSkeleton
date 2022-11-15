// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum Localization {
  /// Cancel
  internal static let cancel = Localization.tr("Localizable", "cancel", fallback: "Cancel")
  /// Choose option
  internal static let chooseOption = Localization.tr("Localizable", "choose-option", fallback: "Choose option")
  /// Confirm password
  internal static let confirmPassword = Localization.tr("Localizable", "confirm-password", fallback: "Confirm password")
  /// Done
  internal static let done = Localization.tr("Localizable", "done", fallback: "Done")
  /// Email
  internal static let email = Localization.tr("Localizable", "email", fallback: "Email")
  /// Localizable.strings
  ///   MVVMSkeleton
  /// 
  ///   Created by Roman Savchenko on 12.12.2021.
  internal static let error = Localization.tr("Localizable", "error", fallback: "Error")
  /// Home
  internal static let home = Localization.tr("Localizable", "home", fallback: "Home")
  /// Logout
  internal static let logout = Localization.tr("Localizable", "logout", fallback: "Logout")
  /// Name
  internal static let name = Localization.tr("Localizable", "name", fallback: "Name")
  /// OK
  internal static let ok = Localization.tr("Localizable", "ok", fallback: "OK")
  /// Password
  internal static let password = Localization.tr("Localizable", "password", fallback: "Password")
  /// Search
  internal static let search = Localization.tr("Localizable", "search", fallback: "Search")
  /// Settings
  internal static let settings = Localization.tr("Localizable", "settings", fallback: "Settings")
  /// Sign In
  internal static let signIn = Localization.tr("Localizable", "sign-in", fallback: "Sign In")
  /// Sign Up
  internal static let signUp = Localization.tr("Localizable", "sign-up", fallback: "Sign Up")
  /// Skip
  internal static let skip = Localization.tr("Localizable", "skip", fallback: "Skip")
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Localization {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
