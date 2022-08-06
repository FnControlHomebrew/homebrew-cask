cask "stemroller" do
  version "1.0.0"
  sha256 "7eea57a10214596a66e2c87e443e2adbd4464f50e70dac6a6b43ce5ab3b42c8e"

  url "https://github.com/stemrollerapp/stemroller/releases/download/#{version}/StemRoller-#{version}-mac.zip",
      verified: "github.com/stemrollerapp/stemroller/"
  name "StemRoller"
  desc "Isolate vocals, drums, bass, and other instrumental stems from any song"
  homepage "https://www.stemroller.com/"

  app "StemRoller.app"

  uninstall quit: "com.stemroller.stemroller"

  zap trash: [
    "~/Library/Application Support/stemroller",
    "~/Library/Preferences/com.stemroller.stemroller.plist",
    "~/Library/Saved Application State/com.stemroller.stemroller.savedState",
  ]
end
