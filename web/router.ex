defmodule Tractor.Router do
  use Tractor.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Tractor do
    pipe_through :api
  end
end
