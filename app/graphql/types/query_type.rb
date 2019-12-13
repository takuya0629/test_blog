module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :blog, !Types::BlogType, nil: false, 
      resolve: ->(_obj, _args, ctx) {
        # ctx[:blog]
        Blog.first
      }
  end
end
