# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mutx < Formula
  desc "CLI for mutx.dev - Deploy and manage agents"
  homepage "https://mutx.dev"
  url "https://github.com/mutx-dev/mutx-dev/archive/refs/tags/cli-v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on "python@3.10" => :test
  depends_on "python@3.11" => :test
  depends_on "python@3.12" => :test

  def install
    # Install the Python package
    system "python3", "-m", "pip", "install", ".", "--prefix=#{prefix}"
  end

  test do
    # Use `test do` for non-network tests
    # Ref: https://docs.brew.sh/Formula-Cookbook#non-network-tests
    assert_match "mutx", shell_output("#{bin}/mutx --help")
  end
end
