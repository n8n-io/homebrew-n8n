require "language/node"

class N8n < Formula
  desc "n8n - Workflow Automation Tool"
  homepage "https://www.npmjs.com/package/n8n"
  url "https://registry.npmjs.org/n8n/-/n8n-0.201.0.tgz"
  sha256 "a4d50fc160ce62b84d8c70716b67ac47640511ad8a1b87ed038b773e827bde0f"
  license all_of: ["Fair-code", "Sustainable Use License"]

  depends_on "node@16"

  livecheck do
    url :stable
  end

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
    ohai ""
  end

  test do
    raise "Test not implemented."
  end
end
