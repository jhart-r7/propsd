build_name 'propsd'

autoversion.create_tags false
autoversion.search_tags false

cookbook.depends 'propsd' do |propsd|
  propsd.path './cookbook'
end

profile :default do |default|
  default.chef.run_list ['propsd::nodejs', 'propsd::default']
end

profile :test do |test|
  test.chef.run_list 'propsd::test'
end
