class AddPhotoUrlToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :photo_url, :string
  end
end
