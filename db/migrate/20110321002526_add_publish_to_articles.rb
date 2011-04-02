class AddPublishToArticles < ActiveRecord::Migration
  def self.up
  	change_table :articles do |t|
      t.boolean :published, :default => false
    end
  end

  def self.down
    remove_column :articles, :publish
    remove_column :articles, :published_on
  end
end
