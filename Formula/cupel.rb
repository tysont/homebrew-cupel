# Rendered for v0.3.0 by dist/homebrew/render.sh in https://github.com/tysont/cupel; edit it there.
class Cupel < Formula
  desc "Verification suite that grades what a coding agent produced"
  homepage "https://github.com/tysont/cupel"
  version "0.3.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/tysont/cupel/releases/download/v0.3.0/cupel-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "415bff09bc887288c154728dcdcc918e57403a2505456c1fd578008f57606a60"
    end
    on_intel do
      url "https://github.com/tysont/cupel/releases/download/v0.3.0/cupel-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "db373feebf5ca720e62025266be855613da71454556b89947fda522b4bc63fa3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tysont/cupel/releases/download/v0.3.0/cupel-0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "453655494962181d68c385e65c9ce00b42a207f5ff3a9399804f3f61b65b7bee"
    end
    on_intel do
      url "https://github.com/tysont/cupel/releases/download/v0.3.0/cupel-0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "acf7818f7f3f4910b88f64cbf04f5a258ebea593603eb34ad98f62a13eb673b0"
    end
  end

  def install
    bin.install "cupel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cupel --version")
  end
end
