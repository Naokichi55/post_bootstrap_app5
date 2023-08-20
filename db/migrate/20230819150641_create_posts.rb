class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts, comment: "投稿" do |t|
      t.string :title, null: false, comment: "タイトル"
      t.text :content, null: false, comment: "内容"

      t.timestamps
    end
  end
end
