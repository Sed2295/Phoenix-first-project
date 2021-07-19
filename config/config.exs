# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :first,
  ecto_repos: [First.Repo]

# Configures the endpoint
config :first, FirstWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "h19PvD5MEH+Xvzkni2Zq5maMCT2YH695PcuPQrQOJ5Wk78NdHnTyGdCWRyfa9zGL",
  render_errors: [view: FirstWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: First.PubSub,
  live_view: [signing_salt: "/3/mEVVz"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
