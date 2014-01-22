=begin
Notes from http://www.youtube.com/watch?v=gR0YfJrg9pg

Rake is a tool that runs scripts.

'rake -T ' lists all the rake commands available in a working directory

in rails, can create your own rake tasks

lib/tasks/import.rake
  namespace :import do
    # description
    desc "imports data from a csv file"
    # says "before running data task, run the environment task"
    # :environment is a built-in Rails rake task that loads models
    task :data => :environment
      #task
      require 'csv'
      CSV.foreach('path/to/products.csv') do |row|
        name = row[0]
        price = row[1].to_i
        Product.create(name: name, price: price)
    end
  end

# You would run this task by doing 'rake import:data'






=end