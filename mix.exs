defmodule Mp3Duration.MixProject do
  use Mix.Project

  @version "0.1.0"
  @description "Decodes MP3s and parses out information"

  def project do
    [
      app: :mp3_duration,
      version: @version,
      description: @description,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp docs do
    [
      main: "Mp3Duration",
      source_url: "https://github.com/toranb/mp3_duration",
      source_ref: "v#{@version}",
      extras: []
    ]
  end

  def package do
    [
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => "https://github.com/toranb/mp3_duration"
      }
    ]
  end
end
