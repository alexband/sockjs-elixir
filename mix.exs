defmodule Sockjs.Mixfile do
  use Mix.Project

  def project do
    [app: :sockjs,
     version: "0.0.1",
     elixir: "~> 0.15.0",
     name: "SockJS for elixir",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:kernel, :stdlib, :xmerl, :logger], mod: {Sockjs, []}]
  end

  # Dependencies can be hex.pm packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    #[{:jazz, git: "https://github.com/meh/jazz"}, {:cowboy, git: "https://github.com/ninenines/cowboy"}]
    #[{:json,   "~> 0.3.0"}, {:cowboy, git: "https://github.com/ninenines/cowboy"}]
    [{:earmark, "~> 0.1", only: [:dev, :test]}, 
     {:ex_doc, "~> 0.5", only: [:dev, :test]}, 
     {:cowboy, git: "https://github.com/ninenines/cowboy"}]
  end
end
