# == Schema Information
#
# Table name: tasks
#
#  id         :bigint           not null, primary key
#  body       :text
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Task < ApplicationRecord
  belongs_to :user

  validates :body, presence: true

  enum status: {
    not_yet_started: "not_yet_started",
    in_progress: "in_progress",
    completed: "completed"
}
end
