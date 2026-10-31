cask "since" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "22ff6cfe51d5c4f138807a24610327d2e88c9081fa758176a790a5fac93cd0d8",
         intel: "6eba4e27be7fe4aa7bc5d5176f14a8bf7311cea646c21b97306039b0063232f0"

  url "https://github.com/0xa3k5/since/releases/download/v#{version}/Since-#{version}-#{arch}.dmg"
  name "Since"
  desc "Keyboard-first Git client"
  homepage "https://gitsince.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Since.app"

  zap trash: [
    "~/Library/Application Support/Since",
    "~/Library/Caches/com.gitsince.app",
    "~/Library/Caches/com.gitsince.app.ShipIt",
    "~/Library/HTTPStorages/com.gitsince.app",
    "~/Library/Preferences/com.gitsince.app.plist",
    "~/Library/Saved Application State/com.gitsince.app.savedState",
  ]
end
