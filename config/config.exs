# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :unoxir,
  ecto_repos: [Unoxir.Repo]

# Configures the endpoint
config :unoxir, UnoxirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "o0Rmup3Qj8I2dFoA11AEtbYqjd9lZie0/wvX7z+onXKbJm3HJWGg+NUVnMeVD60C",
  render_errors: [view: UnoxirWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Unoxir.PubSub,
  live_view: [signing_salt: "RlXngMKe"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
