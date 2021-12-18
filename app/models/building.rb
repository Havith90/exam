class Building < ApplicationRecord

    has_many :apartments

    validates :name, presence: true, uniqueness: {scope: [:city, :address]}
    validates :city, presence: true
    validates :address, presence: true

end
