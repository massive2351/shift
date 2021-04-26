class AddPersonToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :person, :string
  end
end
