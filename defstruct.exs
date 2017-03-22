defmodule Subscriber do
  defstruct name: "", paid: false, over_18: true

  def will_get_news(subscriber) do
    subscriber.paid
  end

  def name_of_subscriber(subscriber) when subscriber.name != "" do
    IO.puts "The name of subscriber is #{subscriber.name}"
  end
  def name_of_subscriber(%Subscriber{}) do
    raise "missing name"
  end
end
