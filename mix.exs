defmodule EspecPhoenix.Mixfile do
  use Mix.Project

  @version "0.7.0"

  def project do
    [app: :espec_phoenix,
     name: "ESpec Phoenix",
     version: @version,
     elixir: "~> 1.3",
     description: description,
     package: package,
     deps: deps,
     source_url: "https://github.com/antonmi/espec_phoenix",
     preferred_cli_env: [espec: :test],
     deps: deps]
  end

  def application do
    [applications: [:logger, :phoenix]]
  end

  defp description do
    """
      ESpec for Phoenix web framework.
    """
  end

  defp deps do
    [
      {:espec, ">= 1.0.1"},
      {:phoenix, ">= 1.2.1"},
      {:ecto, ">= 2.0.4"},
      {:ex_doc, ">= 0.13.0", only: :dev}
    ]
  end

  defp package do
   [
     files: ~w(lib mix.exs README.md),
     maintainers: ["Anton Mishchuk"],
     licenses: ["MIT"],
     links: %{"github" => "https://github.com/antonmi/espec_phoenix"}
   ]
 end
end
