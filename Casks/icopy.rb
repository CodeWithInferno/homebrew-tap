# Homebrew cask for iCopy — published via the codewithinferno/tap tap:
#   brew install --cask codewithinferno/tap/icopy
# On new releases: bump `version`, paste the sha256 printed by the release workflow.
cask "icopy" do
  version "0.1.0"
  sha256 "6b6e9bbb4805327c316533558aeffaeada2e65249b234740b1c41bb89511d200"

  url "https://github.com/CodeWithInferno/iCopy/releases/download/v#{version}/iCopy.zip"
  name "iCopy"
  desc "Liquid Glass clipboard manager for the macOS menu bar"
  homepage "https://github.com/CodeWithInferno/iCopy"

  depends_on macos: ">= :tahoe"

  app "iCopy.app"

  zap trash: [
    "~/Library/Containers/com.pratham.iCopy",
  ]
end
