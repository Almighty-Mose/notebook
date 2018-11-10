
class Condition < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :user
  validates :name, presence: true
  validates :user_id, presence: true

  include BelongsToUniverse
  include HasAttributes
  include HasPrivacy
  include HasContentGroupers
  include HasImageUploads
  include HasChangelog
  include Serendipitous::Concern

  include Authority::Abilities
  self.authorizer_name = 'ExtendedContentAuthorizer'

  def self.color
    'text-darken-1 lime'
  end

  def self.icon
    'bubble_chart'
  end

  def self.content_name
    'condition'
  end

  def description
    overview_field_value('Description')
  end
end