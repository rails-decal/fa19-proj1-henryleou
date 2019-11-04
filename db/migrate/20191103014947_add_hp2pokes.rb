class AddHp2pokes < ActiveRecord::Migration[6.0]
  def change
    add_column :pokemons, :Healthbar, :integer
  end
end