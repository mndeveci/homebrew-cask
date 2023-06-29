cask "aws-sam-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "1.88.0"
  sha256 intel: "faed03a7d38bbeaf90b9373fbc5a616902e5644d55cec32f4a37dcba4319aed4",
         arm: "70a5583160398391cdf0dd5d946448bc36c078d72465ac7c095ad1f56190c707"
  url "https://github.com/aws/aws-sam-cli/releases/download/v#{version}/aws-sam-cli-macos-#{arch}.pkg"

  name "AWS SAM CLI"
  desc "AWS SAM CLI 🐿 is a tool for local development and testing of Serverless applications"
  homepage "https://github.com/aws/aws-sam-cli/"

  auto_updates true
  pkg "aws-sam-cli-macos-#{arch}.pkg"

  livecheck do
    url :url
    regex(/^v?\.?(\d+(?:\.\d+)+)$/i)
  end

  uninstall pkgutil: "com.amazon.aws.sam.cli"
end
