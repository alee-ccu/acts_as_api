shared_examples_for 'renaming' do
  describe 'an attribute in the api template' do
    subject(:response) { @luke.as_api_response(:rename_last_name) }

    it 'returns a hash' do
      expect(response).to be_kind_of(Hash)
    end

    it 'returns the correct number of fields' do
      expect(response).to have(1).keys
    end

    it 'returns all specified fields' do
      expect(response.keys).to include(:family_name)
    end

    it 'returns the correct values for the specified fields' do
      expect(response.values).to include(@luke.last_name)
    end
  end

  describe 'the node/key of a method in the api template' do
    subject(:response) { @luke.as_api_response(:rename_full_name) }

    it 'returns a hash' do
      expect(response).to be_kind_of(Hash)
    end

    it 'returns the correct number of fields' do
      expect(response).to have(1).keys
    end

    it 'returns all specified fields' do
      expect(response.keys).to include(:other_full_name)
    end

    it 'returns the correct values for the specified fields' do
      expect(response.values).to include(@luke.full_name)
    end
  end
end
