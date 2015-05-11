class CreateEnableDisableConfirmations < ActiveRecord::Migration
  def change
    create_table :enable_disable_confirmations do |t|
      t.boolean :conformation_required, default: :true
      t.timestamps null: false
    end
  end
end
