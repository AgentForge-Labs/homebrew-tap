class Snapforge < Formula
  desc "Standalone SnapForge website screenshot and page-context CLI"
  homepage "https://snapforge.web-tasarimci.com"
  version "0.3.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://snapforge.web-tasarimci.com/cli-releases/0.3.0/snapforge-v0.3.0-darwin-arm64.tar.gz"
      sha256 "cbd80814ffd23bafed2c8877b89032cd7adcc90e40fb9856b24a2c1279e425b1"
    else
      url "https://snapforge.web-tasarimci.com/cli-releases/0.3.0/snapforge-v0.3.0-darwin-x64.tar.gz"
      sha256 "58e6cb6b084475d1fed665556321cb1d46646e84e3061c92371f9d704a1a29ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://snapforge.web-tasarimci.com/cli-releases/0.3.0/snapforge-v0.3.0-linux-arm64.tar.gz"
      sha256 "fbfce6d29a91227a4b1ee277b4dd542403461815c7c82c015b0d2e8a879f9d09"
    else
      url "https://snapforge.web-tasarimci.com/cli-releases/0.3.0/snapforge-v0.3.0-linux-x64.tar.gz"
      sha256 "48bc4e8837c16f74f094d3a0a1a129f7c77db8b7ae36f636e9b76294cbb05b14"
    end
  end

  def install
    bin.install "snapforge"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/snapforge --version").strip
  end
end
