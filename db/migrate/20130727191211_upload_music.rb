class UploadMusic < ActiveRecord::Migration
  def up
    create_table :uploads do |t|
      t.string :file
  end
end

  def down
    drop_table :uploads
  end
end
