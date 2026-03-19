class Work < Formula
  desc "Interactive git worktree manager"
  homepage "https://github.com/qiangfoo/homebrew-tap"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/qiangfoo/homebrew-tap/releases/download/v#{version}/work-aarch64-apple-darwin.tar.gz"
      sha256 "6680d6662b955be835cd0c62e9f24bc4f7835111b2e769fd917484f10e83f561"
    end
    on_intel do
      url "https://github.com/qiangfoo/homebrew-tap/releases/download/v#{version}/work-x86_64-apple-darwin.tar.gz"
      sha256 "83ae3813ff992cf348454d4d9883aeb46a0833ebaec4131881c583f3abb56c86"
    end
  end

  def install
    bin.install "work"
  end

  def caveats
    <<~EOS
      Add the following to your ~/.zshrc:
        eval "$(work init)"
    EOS
  end
end
