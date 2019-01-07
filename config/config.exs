# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixnthe,
  ecto_repos: [Elixnthe.Repo]

# Configures the endpoint
config :elixnthe, ElixntheWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "i0nq88mRZ24/3QRgVieFceaJ6SdPeFBe4LcZtVLLp5XkJApPBE7nUzBDJGilBq4E",
  render_errors: [view: ElixntheWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Elixnthe.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
