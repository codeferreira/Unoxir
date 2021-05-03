defmodule Unoxir.Repo do
  use Ecto.Repo,
    otp_app: :unoxir,
    adapter: Ecto.Adapters.Postgres
end
