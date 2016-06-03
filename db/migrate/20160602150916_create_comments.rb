class CreateComments < ActiveRecord::Migration
  def change
     create_table :comments do |t|
      t.references :commentable, polymorphic: true, index: true
      t.string :body
      t.integer :user_id

      t.timestamps
    end
  end
end
