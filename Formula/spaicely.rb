class Spaicely < Formula
  desc "Preview, deploy and manage sites hosted on Spaicely"
  homepage "https://spaicely.com/developers/"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spaicely/cli/releases/download/v0.1.0/spaicely-darwin-arm64.tar.gz"
      sha256 "b6299db2f4202b82f340c9813867f25bc959880b7c5aa776e5dd1519746dd31d"
    end
    on_intel do
      url "https://github.com/spaicely/cli/releases/download/v0.1.0/spaicely-darwin-x64.tar.gz"
      sha256 "3f6d90f7160a3d3341a11380e42dc90894a9acd87c42f888a185af946c5ea4de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spaicely/cli/releases/download/v0.1.0/spaicely-linux-arm64.tar.gz"
      sha256 "a7e1c338d666eea966f5e14a01daa72a1419f5a62b76bd6c2d88524a7a9de4e0"
    end
    on_intel do
      url "https://github.com/spaicely/cli/releases/download/v0.1.0/spaicely-linux-x64.tar.gz"
      sha256 "8a8339678cc743a5f6158a3e636672d29bbdb2c3cab8867512921d5a68b8265a"
    end
  end

  def install
    bin.install "spaicely"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spaicely --version")
  end
end
