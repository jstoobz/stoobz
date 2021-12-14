global_settings = "~/.iex.exs"
if File.exists?(global_settings), do: Code.require_file(global_settings)

Application.put_env(:elixir, :ansi_enabled, true)

IEx.configure(
  colors: [
    eval_result: [:cyan, :bright],
    # eval_error: [[:red, :bright, "\nbrrp\n"]],
    eval_error: [[:red, :bright, "✘ \n"]],
    eval_info: [:yellow, :bright],
    eval_warning: [:yellow, :bright, "💩"]
  ],
  default_prompt:
    [
      # cursor => column 1
      "\e[G",
      :blue,
      "%prefix",
      :yellow,
      "|",
      :blue,
      "%counter",
      " ",
      :yellow,
      "brrp",
      :magenta,
      " ▶",
      :reset
    ]
    |> IO.ANSI.format()
    |> IO.chardata_to_string()
)

# alias MyApp.{Repo, User, Photo, Album}
# [am] = Repo.all(User)

# Test Configuration
# IEx.configure [colors: [syntax_colors: [number: :magenta, atom: :cyan, string: :green, boolean: :magenta, nil: :magenta]]]

IO.puts(
  [:blue, "\nbrrp from ", :magenta, "~/.iex.exs ", :cyan, "& ", :blue, "jstoobz\n"]
  |> IO.ANSI.format()
  |> IO.chardata_to_string()
)

alias Stoobz.{Repo, Accounts}
import Ecto.Query

# Accounts.get_user_by_email("asdf@asdf.com")
