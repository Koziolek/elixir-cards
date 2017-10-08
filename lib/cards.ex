defmodule Cards do

  def create_deck do
    vals = ["2", "3", "4", "5", "6", "7", "8", "9", "J", "Q", "K", "A"]
    suits = ["♣","♢","♡","♠"]

    for suit <- suits, val <-vals do
        {suit, val}
    end
  end

  def shuffle(deck \\ []) do
    Enum.shuffle(deck)
  end

  def contains?(deck, hand) do
    Enum.member?(deck, hand)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

end
