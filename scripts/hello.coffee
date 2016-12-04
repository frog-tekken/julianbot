module.exports = (robot) ->

  robot.hear /good afternoon/i, (res) ->
    res.send "やあ、呼んだかい？"

  robot.respond /magic (.*)/i, (res) ->
    doorType = res.match[1]
    if doorType is "(.*)"
      res.reply "ごめん、もう一回言って？."
    else
      res.reply "チチンプイプイ #{doorType}"
