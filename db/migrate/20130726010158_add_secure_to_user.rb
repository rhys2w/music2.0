class AddSecureToUser < ActiveRecord::Migration
  def up
    add_column :users, :password_hash, :string
    add_column :users, :password_salt, :string
    remove_column :users, :password
  end

  def down
    remove_column :users, :password_hash
    remove_column :users, :password_salt
    add_column :users, :password, :string
  end
end
