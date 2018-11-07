class Pirate
  attr_accessor :name, :weight, :height
  ALL = []

  def self.all
    ALL
  end

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    ALL << self
  end
end
