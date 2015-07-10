class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :surname, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :is_female, :boolean, default: false
    add_column :users, :school, :string
    add_column :users, :hometown, :string, default: "Πτολεμαίδα"
  end
end
