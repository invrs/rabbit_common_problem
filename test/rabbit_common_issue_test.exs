defmodule RabbitCommonIssueTest do
  use ExUnit.Case
  doctest RabbitCommonIssue

  test "greets the world" do
    assert RabbitCommonIssue.hello() == :world
  end
end
