cask "aws-sam-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "1.89.0"
  sha256 intel: "1b48745a8b7f15ee6c2119619e9f10ce215eaecb3e49e73b9e420056890ef9e1",
         arm: "2ed4e2bc28e254ee106e7642aa987573961516a2fef737f43b82c2674c44036e"
  url "https://github.com/aws/aws-sam-cli/releases/download/v#{version}/aws-sam-cli-macos-#{arch}.pkg",
      verified: "github.com/aws/aws-sam-cli"

  name "AWS SAM CLI"
  desc "AWS SAM CLI 🐿 is a tool for local development and testing of Serverless applications"
  homepage "https://github.com/aws/aws-sam-cli/"

  auto_updates true
  pkg "aws-sam-cli-macos-x86_64.pkg"

  uninstall pkgutil: "com.amazon.aws.sam.cli"
end
