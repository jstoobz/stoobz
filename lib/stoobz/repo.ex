defmodule Stoobz.Repo do
  use Ecto.Repo,
    otp_app: :stoobz,
    adapter: Ecto.Adapters.Postgres
end
