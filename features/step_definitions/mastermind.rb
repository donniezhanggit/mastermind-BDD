Given /^I am not yet playing$/ do

end

When /^I start a new game$/ do
  @messenger = StringIO.new
  game = Mastermind::Game.new(@messenger)
  @messages = game.start
end

Then /^the game should say "(.*?)"$/ do |message|
  @messenger.string.split("\n").should include(message)
end

