class CreateRooms < ActiveRecord::Migration[6.0]
  has_many :room_users
  has_many :users, through: :room_users

  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
