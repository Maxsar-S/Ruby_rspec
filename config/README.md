# Soft Delete Functionality for Item Model

## Setup

1. Clone the repository.
2. Run `bundle install` to install dependencies.
3. Run `rails db:migrate` to apply database migrations.

## Running Tests

Run `rspec` to execute the test suite.

## Soft Delete Functionality

- The `Item` model has a `soft_delete` method to mark items as deleted by updating the `deleted_at` attribute.
- The `restore` method sets the `deleted_at` attribute to nil.
- A default scope is added to the model to exclude soft-deleted items from normal queries.

## Explanatory Notes

- This implementation assumes the use of Rails 7.1.2.