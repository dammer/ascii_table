require "./spec_helper"

describe AsciiTable do
  it "works" do
    table = AsciiTable.new(%w[Day Value Rand])
    Time::DayOfWeek.each do |day|
      table.add_row([day.to_s, day.to_i.to_s, "X" * rand(5..15)])
    end
    table.render # by default adjust_width: :maximal
    table.render(adjust_width: :personal)
    true.should be_true
  rescue
    true.should be_false
  end
end
