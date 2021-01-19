# frozen_string_literal: true

class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  scope :from_the_past_week, lambda {
    where("created_at >= DATE('now', '-7 days')")
  }
end
