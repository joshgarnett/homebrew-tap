# Written by the Rustleaks release workflow. Do not edit.
class Rustleaks < Formula
  desc "Secret scanner for Git repositories, folders, archives and standard input"
  homepage "https://github.com/joshgarnett/rustleaks"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joshgarnett/rustleaks/releases/download/v0.2.0/rustleaks-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "20af1827ccd8d73d66777b8281c9b9a5521d1915297bd04292272540faec9bfe"
    end

    on_intel do
      url "https://github.com/joshgarnett/rustleaks/releases/download/v0.2.0/rustleaks-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "9686747873a9ade10901cb861d1e8df94dc42be8a55aa2f1502db9fb4cce7379"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joshgarnett/rustleaks/releases/download/v0.2.0/rustleaks-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "611267e5050cb4332ed24cd8246bb03f6c9d6f62ca038d085827b652b425842c"
    end

    on_intel do
      url "https://github.com/joshgarnett/rustleaks/releases/download/v0.2.0/rustleaks-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55ef056428126768eae26e234be011b0bbbd7a280cb3434e08d4eda2ed125f4a"
    end
  end

  def install
    bin.install "rustleaks"
    doc.install "licenses"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustleaks --version")
  end
end
