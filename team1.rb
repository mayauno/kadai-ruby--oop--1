class Team
  # インスタンス変数の定義
  attr_accessor :name, :win, :lose, :draw
  
  # initialize（変数の初期化）
  def initialize(name, win, lose, draw)
    self.name = name
    self.win  = win
    self.lose = lose
    self.draw = draw
  end
  
  # 勝率を計算するメソッド
  def calc_win_rate
    win_rate = self.win.to_f / (self.win + self.lose)
    return win_rate
  end
  
  # 成績を表示するメソッド
  def show_team_result
    puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{self.calc_win_rate}です。"
  end
  
end

# インスタンスの生成
giants   = Team.new("Giants",   67, 45,  8)
tigers   = Team.new("Tigers",   60, 53,  7)
dragons  = Team.new("Dragons",  60, 55,  5)
baystars = Team.new("BayStars", 56, 58,  6)
carp     = Team.new("Carp",     52, 56, 12)
swallows = Team.new("Swallows", 41, 69, 10)

# show_team_resultの呼び出し
giants.show_team_result
tigers.show_team_result
dragons.show_team_result
baystars.show_team_result
carp.show_team_result
swallows.show_team_result