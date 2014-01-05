json.array!(@users) do |user|
  json.extract! user, :id, :name, :age, :male
  json.url user_url(user, format: :json)
end
