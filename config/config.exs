# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_sample,
  ecto_repos: [PhoenixSample.Repo]

# Configures the endpoint
config :phoenix_sample, PhoenixSampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pFHtOhGgtn1oS8G43cT4URwnL+ggS53cozK+gpJshCoSb5vUZdbHAoi+zgTAq3f9",
  render_errors: [view: PhoenixSampleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixSample.PubSub,
  live_view: [signing_salt: "8feqDrKT"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
