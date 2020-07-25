require 'rails_helper'

RSpec.describe "/", type: :request do
  let(:organization) { create :organization, is_instance_owner: true }

  it 'has landing_page_text_what populated from system_setting' do
    expected_what_text = Faker::Lorem.sentence
    new_system_setting = build(:system_setting, landing_page_text_what: expected_what_text)
    expect(SystemSetting).to receive(:first).and_return new_system_setting

    get '/'

    # TODO assert
  end

  it 'has landing_page_text_who populated from system_setting' do
    expected_who_text = Faker::Lorem.sentence
    new_system_setting = build(:system_setting, landing_page_text_who: expected_who_text)
    expect(SystemSetting).to receive(:first).and_return new_system_setting

    get '/'

    # TODO assert
  end

  it 'has landing_page_text_how populated from system_setting' do
    expected_how_text = Faker::Lorem.sentence
    new_system_setting = build(:system_setting, landing_page_text_how: expected_how_text)
    expect(SystemSetting).to receive(:first).and_return new_system_setting

    get '/'

    # TODO assert
  end

end
