class JiraResolver < Formula
  desc "帮助你应对 kevin 的每日 Jira Ticket Resolve 任务"
  homepage "https://github.com/linbuxiao/jira-resolver"
  url "https://github.com/linbuxiao/jira-resolver/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6f5db4ac7ee28608ecdeb8c1d5d2c8b50ace38d8a33a8166156ea3a34944e44d"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Jira Resolver version 0.1.0", shell_output("#{bin}/jira-resolver -v")
  end
end
