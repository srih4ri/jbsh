class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.text :location
      t.text :notes
      t.datetime :kick_off_at
      t.string :game
      t.string :host

      t.timestamps
    end
  end
end
