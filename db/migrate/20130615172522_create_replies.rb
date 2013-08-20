class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :body
      t.references :comment

      t.timestamps
    end

    add_index "replies", ["comment_id"], name: "index_replies_on_comment_id"
  end
end
