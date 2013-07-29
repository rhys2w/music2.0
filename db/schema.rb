# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130727191211) do

  create_table "list_followings", :force => true do |t|
    t.integer "playlist_id"
    t.integer "user_playlist_id"
    t.integer "user_id"
  end

  create_table "playlists", :force => true do |t|
    t.string  "listtitle"
    t.integer "song_id"
    t.integer "user_id"
  end

  create_table "songs", :force => true do |t|
    t.string  "title"
    t.string  "artist"
    t.integer "playlist_id"
    t.integer "user_id"
  end

  create_table "uploads", :force => true do |t|
    t.string "file"
  end

  create_table "user_followings", :force => true do |t|
    t.integer "user_id"
    t.integer "user_following_id"
  end

  create_table "user_playlists", :force => true do |t|
    t.integer "song_id"
    t.integer "user_id"
    t.integer "list_following_id"
  end

  create_table "users", :force => true do |t|
    t.string  "fname"
    t.string  "lname"
    t.string  "email"
    t.string  "username"
    t.integer "playlist_id"
    t.integer "song_id"
    t.string  "password_hash"
    t.string  "password_salt"
  end

end
