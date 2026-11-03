cask "since" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "6c0fac4d8107cef8a566f4f9008b343640a9f7b56c8bbab91862a27a20dcebef",
         intel: "8ec04a2fd705112d2ad044cf67a915337111ea282e2f6aa4fd3e36869b75f88d"

  url "https://github.com/0xa3k5/since/releases/download/v#{version}/Since-#{version}-#{arch}.dmg",
      verified: "github.com/0xa3k5/since/"
  name "Since"
  desc "Keyboard-first Git client"
  homepage "https://gitsince.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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
