class AddColumnToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :content, :string
    add_column :reviews, :rating, :integer
    add_reference :reviews, :restaurant, foreign_key: true
  end
end
