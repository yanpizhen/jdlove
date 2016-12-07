class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      # Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      # Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      # Rememberable
      t.datetime :remember_created_at

      # Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      # Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      # Lockable
      t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      t.string   :unlock_token # Only if unlock strategy is :email or :both
      t.datetime :locked_at

      # custom
      t.string   "name",                   limit: 100
      t.string   "mobile",                 limit: 180
      t.string   "login",                  limit: 255
      t.string   "name_en",                limit: 255
      t.string   "nick_name",              limit: 100
      t.string   "other_phone",            limit: 255
      t.text     "introduction",           limit: 65535
      t.string   "source",                 limit: 255,   default: "local"
      t.string   "u_type",                 limit: 255,   default: "customer"
      t.boolean  "is_blacklist",                         default: false
      t.string   "avatar",                 limit: 255
      t.string   "name_ch",                limit: 255
      t.integer  "gender",                 limit: 4,     default: 0
      t.date     "birthday"
      t.integer  "source_id",              limit: 4
      t.integer  "failed_attempts",        limit: 4,     default: 0
      t.string   "unlock_token",           limit: 255
      t.datetime "locked_at"
      t.integer  "likes_count",            limit: 4,     default: 0
      t.boolean  "is_master",                            default: false
      t.string   "weixin",                 limit: 100
      t.integer  "accused_count",          limit: 4,     default: 0
      t.integer  "sash_id",                limit: 4
      t.integer  "level",                  limit: 4,     default: 0
      t.string   "uid",                    limit: 50
      t.string   "q_key",                  limit: 300
      t.string   "q_bucket",               limit: 100
      t.string   "channel",                limit: 100

      t.timestamps
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
