class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :image
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
