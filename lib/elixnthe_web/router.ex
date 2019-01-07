defmodule ElixntheWeb.Router do
  use ElixntheWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElixntheWeb do
    pipe_through :api
  end
end
