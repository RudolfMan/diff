use Mix.Config

# For production, don't forget to configure the url host
# to something meaningful, Phoenix uses this information
# when generating URLs.
#
# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix phx.digest` task,
# which you should run after static files are built and
# before starting your production server.
config :diff, DiffWeb.Endpoint,
  http: [compress: true],
  url: [scheme: "https", port: 443],
  load_from_system_env: true,
  cache_static_manifest: "priv/static/cache_manifest.json"

config :diff,
  tmp_dir: Path.expand("tmp"),
  storage_impl: Diff.Storage.GCS

config :sasl, sasl_error_logger: false

config :rollbax,
  environment: "prod",
  enabled: true,
  enable_crash_reports: true

config :logger,
  level: :info,
  metadata: [:request_id]

config :phoenix, :serve_endpoints, true
