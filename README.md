# AsciiTable

The AsciiTable class provides a simple and flexible way to generate ASCII tables with customizable styles and width adjustment strategies.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     ascii_table:
       github: dammer/ascii_table
   ```

2. Run `shards install`

## Usage

```crystal
require "ascii_table"

table = AsciiTable.new(%w[Day Value Rand])
Time::DayOfWeek.each do |day|
  table.add_row([day.to_s, day.to_i.to_s, "X" * rand(5..15)])
end
table.render # by default adjust_width: :maximal
# ┌─────────────────┬─────────────────┬─────────────────┐
# │       Day       │      Value      │      Rand       │
# ├─────────────────┼─────────────────┼─────────────────┤
# │     Monday      │        1        │   XXXXXXXXXXX   │
# ├─────────────────┼─────────────────┼─────────────────┤
# │     Tuesday     │        2        │ XXXXXXXXXXXXXXX │
# ├─────────────────┼─────────────────┼─────────────────┤
# │    Wednesday    │        3        │     XXXXXXX     │
# ├─────────────────┼─────────────────┼─────────────────┤
# │    Thursday     │        4        │  XXXXXXXXXXXXX  │
# ├─────────────────┼─────────────────┼─────────────────┤
# │     Friday      │        5        │     XXXXXX      │
# ├─────────────────┼─────────────────┼─────────────────┤
# │    Saturday     │        6        │ XXXXXXXXXXXXXXX │
# ├─────────────────┼─────────────────┼─────────────────┤
# │     Sunday      │        7        │     XXXXXXX     │
# └─────────────────┴─────────────────┴─────────────────┘
table.render(adjust_width: :personal)
# ┌───────────┬───────┬─────────────────┐
# │    Day    │ Value │      Rand       │
# ├───────────┼───────┼─────────────────┤
# │  Monday   │   1   │   XXXXXXXXXXX   │
# ├───────────┼───────┼─────────────────┤
# │  Tuesday  │   2   │ XXXXXXXXXXXXXXX │
# ├───────────┼───────┼─────────────────┤
# │ Wednesday │   3   │     XXXXXXX     │
# ├───────────┼───────┼─────────────────┤
# │ Thursday  │   4   │  XXXXXXXXXXXXX  │
# ├───────────┼───────┼─────────────────┤
# │  Friday   │   5   │     XXXXXX      │
# ├───────────┼───────┼─────────────────┤
# │ Saturday  │   6   │ XXXXXXXXXXXXXXX │
# ├───────────┼───────┼─────────────────┤
# │  Sunday   │   7   │     XXXXXXX     │
# └───────────┴───────┴─────────────────┘

```

## Contributing

1. Fork it (<https://github.com/your-github-user/ascii_table/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Damir Sharipov](https://github.com/your-github-user) - creator and maintainer
