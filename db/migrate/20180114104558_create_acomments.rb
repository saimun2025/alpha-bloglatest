class CreateAcomments < ActiveRecord::Migration
  def change
    create_table :acomments do |t|
      t.text :content
      t.references :article, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
