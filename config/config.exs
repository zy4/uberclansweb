# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :uberclansweb,
  ecto_repos: [Uberclansweb.Repo]

# Configures the endpoint
config :uberclansweb, Uberclansweb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iO3DCYjdfwhnIhXzS3fyOL7DQfrlgIITzq6a1G2CEDiJJ3UptMkmrcIrby9RA3AH",
  render_errors: [view: Uberclansweb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Uberclansweb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
