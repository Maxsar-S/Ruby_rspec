require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'soft delete functionality' do

    it 'soft deleting an item' do
      item = Item.create(name: 'Item soft-del')
      item.soft_delete
      expect(item.deleted_at).to be_present
    end

    it 't restoring a soft-deleted item' do
      item = Item.create(name: 'Item restore')
      item.soft_delete
      item.restore
      expect(item.deleted_at).to be_nil
    end

    it 'soft-deleted items are excluded from normal queries' do
      item1 = Item.create(name: 'Normal Item')
      item2 = Item.create(name: 'Soft-Deleted Item')
      item2.soft_delete
      expect(Item.all).not_to include(item2)
      expect(Item.all).to include(item1)
    end
  end
end
