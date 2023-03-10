# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :lottery,
  ecto_repos: [Lottery.Repo]

# Configures the endpoint
config :lottery, LotteryWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: LotteryWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Lottery.PubSub,
  live_view: [signing_salt: "dRWkG2RU"]

# Configures the mailer
#
# By default it uses the "Local" adapter which stores the emails
# locally. You can see the emails in your browser, at "/dev/mailbox".
#
# For production it's recommended to configure a different adapter
# at the `config/runtime.exs`.
# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
