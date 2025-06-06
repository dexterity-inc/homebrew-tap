# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Envi < Formula
  desc "CLI tool to push and pull .env files to/from GitHub Gists"
  homepage "https://github.com/dexterity-inc/envi"
  version "1.0.12"
  license "MIT"

  depends_on "go" => :build

  on_macos do
    on_intel do
      url "https://github.com/dexterity-inc/envi/releases/download/v1.0.12/envi-darwin-amd64.tar.gz"
      sha256 "1f0a1cb84055e3f1593d5c93f5c6a9a75e76cbe6a015af225113cf416adce118"

      def install
        system "go", "build", *std_go_args
      end
    end
    on_arm do
      url "https://github.com/dexterity-inc/envi/releases/download/v1.0.12/envi-darwin-arm64.tar.gz"
      sha256 "fe63a52ccc4a938d13d924479fa7189b7974235a0538a215210a491a85591b37"

      def install
        system "go", "build", *std_go_args
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dexterity-inc/envi/releases/download/v1.0.12/envi-linux-amd64.tar.gz"
        sha256 "eb3bcc53db54ca109dd527e480f19c24309506f433a95c6fac9fc9752cf06e7d"

        def install
          system "go", "build", *std_go_args
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dexterity-inc/envi/releases/download/v1.0.12/envi-linux-arm64.tar.gz"
        sha256 "374792bf4e5cadcc4ba6a546db4b92efdb96909d75bc61ebc7109d71fa191ce6"

        def install
          system "go", "build", *std_go_args
        end
      end
    end
  end

  def caveats
    <<~EOS
      To get started, run:
        envi config --token <your_github_token>
    EOS
  end

  test do
    assert_match "environment variable management", shell_output("#{bin}/envi --help")
  end
end
