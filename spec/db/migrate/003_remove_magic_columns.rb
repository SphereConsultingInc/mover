class RemoveMagicColumns < ActiveRecord::Migration
  def self.up
    remove_column :articles, :move_id
    remove_column :articles, :moved_at
  end

  def self.down
    add_column :articles, :moved_id, :integer
    add_column :articles, :moved_at, :datetime
  end
end
