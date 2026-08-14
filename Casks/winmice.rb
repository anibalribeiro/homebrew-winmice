cask "winmice" do
  version "1.0.0"
  sha256 "e73bd7491c2b86766e0cd290669d6fdce83451915b6a1e722d7b35b01b4a2797"

  url "https://github.com/anibalribeiro/WinMice/releases/download/v#{version}/WinMice-#{version}.dmg"
  name "WinMice"
  desc "Windows-style mouse scrolling and side buttons for macOS"
  homepage "https://anibalribeiro.cz/Winmice/"

  app "WinMice.app"

  caveats <<~EOS
    WinMice releases are Developer ID signed and notarized by Apple.

    Grant Accessibility access so scrolling and button mapping work.
    If you are upgrading from an older ad-hoc (unsigned) build, remove every
    old WinMice entry in Accessibility and re-enable /Applications/WinMice.app
    once.
  EOS
end
