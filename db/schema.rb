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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181227100712) do

  create_table "affiliates", force: :cascade do |t|
    t.string "itemName"
    t.string "catchcopy"
    t.string "itemCode"
    t.string "itemPrice"
    t.string "itemCaption"
    t.string "itemUrl"
    t.string "affiliateUrl"
    t.string "smallImageUrls"
    t.string "mediumImageUrls"
    t.string "taxFlag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "comment"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uid"
    t.index ["event_id"], name: "index_comments_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "detail"
    t.string "place"
    t.string "url"
    t.datetime "date"
    t.integer "limit"
    t.string "uid"
    t.integer "view"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "close_time"
  end

  create_table "mastodon_clients", force: :cascade do |t|
    t.string "domain"
    t.string "client_id"
    t.string "client_secret"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "uid"
    t.integer "kbn"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_members_on_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "uid"
    t.string "display_name"
    t.string "avatar"
    t.string "url"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "domain"
  end

end
