require_relative '../../config/init.rb'

class RemovePasswordFromUsers < ActiveRecord::Migration[5.0]
	def change
    # HINT: checkout ActiveRecord::Migration.create_table
    remove_column :users , :password

  end
end