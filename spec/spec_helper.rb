require('rspec')
require('pg')
require('patient')
require('pry')
require('doctor')


DB = PG.connect({:dbname => 'medical_office_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM doctors *;")
    DB.exec("DELETE FROM patients *;")
  end
end
