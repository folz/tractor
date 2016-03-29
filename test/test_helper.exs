ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Tractor.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Tractor.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Tractor.Repo)

