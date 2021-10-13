class Pet < ApplicationRecord

  has_many :pet_histories
  belongs_to :client

  def history_count
    self.pet_histories.count
  end

  def avg_weight
    if self.pet_histories.count > 0
    self.pet_histories.sum(:weight)/self.pet_histories.count
    else
      "Este animal no cuenta con tanta información"
    end
  end

  def avg_height
    if self.pet_histories.count > 0
      (self.pet_histories.sum(:heigth)/self.pet_histories.count).round
    else
        "Este animal no cuenta con tanta información"
    end
  end

  def max_weight
    if self.pet_histories.count > 0
      self.pet_histories.maximum("weight")
    else
      "Este animal no cuenta con tanta información"
    end
  end

  def max_height
    if self.pet_histories.count > 0
      self.pet_histories.maximum("heigth")
    else
      "Este animal no cuenta con tanta información"
    end
  end

end
