class AddCommentEntryToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :comment_entry, :text
  end
end
