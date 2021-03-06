# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150309123502) do

  create_table "rating_marks", force: :cascade do |t|
    t.string   "title",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rating_marks_snippets", id: false, force: :cascade do |t|
    t.integer "snippet_id"
    t.integer "rating_mark_id"
  end

  add_index "rating_marks_snippets", ["rating_mark_id"], name: "index_rating_marks_snippets_on_rating_mark_id"
  add_index "rating_marks_snippets", ["snippet_id"], name: "index_rating_marks_snippets_on_snippet_id"

  create_table "ratings", force: :cascade do |t|
    t.integer  "user_id",        null: false
    t.integer  "rating_mark_id", null: false
    t.integer  "snippet_id",     null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "ratings", ["rating_mark_id"], name: "index_ratings_on_rating_mark_id"
  add_index "ratings", ["snippet_id"], name: "index_ratings_on_snippet_id"
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id"

  create_table "settings", force: :cascade do |t|
    t.datetime "startTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "snippets", force: :cascade do |t|
    t.text     "french"
    t.text     "german"
    t.integer  "showTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "lastActivityTime"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
