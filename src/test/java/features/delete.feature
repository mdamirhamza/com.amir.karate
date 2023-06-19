Feature: Todo Delete API

  Background:
    * url 'https://gorest.co.in/public/v2'

  Scenario: Delete a User
    Given path '/todos/17822'
    And header Authorization = 'Bearer ' +'9f7e40a8f62d809d786390d8f47649b76f29c0d2d887d361babca5c7cbaa0fb0'
    When method delete
    Then status 200

  Scenario: Verify User for Deletion
    Given path '/todos/2937993'
    When method get
    Then status 404
    * print response