class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.integer :id_receiver
      t.integer :id_sender
      t.integer :id_comic
      t.string :mail_receiver
      t.string :content

      t.timestamps
    end
  end
end
