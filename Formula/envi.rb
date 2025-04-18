   class Envi < Formula
     desc "CLI tool to push and pull .env files to/from GitHub Gists"
     homepage "https://github.com/dexterity-inc/envi"
     url "https://github.com/dexterity-inc/envi/archive/refs/tags/v1.0.0.tar.gz"
     sha256 "f775b026898dcba5c18d332f838785f0084c15c3ac3aedebdada4e1d83e158d0" # Get this with `shasum -a 256 filename.tar.gz`
     license "MIT" # Replace with your actual license

     depends_on "go" => :build

     def install
       system "go", "build", *std_go_args
     end

     test do
       assert_match "environment variable management", shell_output("#{bin}/envi --help")
     end
   end