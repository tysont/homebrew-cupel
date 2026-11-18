# Rendered for v0.3.1 by dist/homebrew/render.sh in https://github.com/tysont/cupel; edit it there.
class Cupel < Formula
  desc "Verification suite that grades what a coding agent produced"
  homepage "https://github.com/tysont/cupel"
  version "0.3.1"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/tysont/cupel/releases/download/v0.3.1/cupel-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "4ae269614c33e0fa34b684b2f8ee1f0a89de64eb13b66b6ecadb9fcb23831805"
    end
    on_intel do
      url "https://github.com/tysont/cupel/releases/download/v0.3.1/cupel-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "9d9d8a3407e355a768c74d82bc141fd370a2f25ec17c756f54ce244f153ae662"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tysont/cupel/releases/download/v0.3.1/cupel-0.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d388b482706d0ff7c19db7e198bca3c40c9e380af26ce7928aff8f3292232e5b"
    end
    on_intel do
      url "https://github.com/tysont/cupel/releases/download/v0.3.1/cupel-0.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2d98980119968fd52c47b72703a731f887b5575d6453ee24a8ab8dbbb4f22623"
    end
  end

  def install
    bin.install "cupel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cupel --version")
  end
end
