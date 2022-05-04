class TweetSerializer < ActiveModel::Serializer
  #attributes :id
  attributes :id, :content, :created_at, :user
end
