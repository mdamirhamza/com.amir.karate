Feature: Get API Testing

  Background:
    Given url 'https://gorest.co.in/public/v2/posts'

  Scenario: Get User Details
    Given path '45720'
    When method GET
    Then status 200

    * def jsonResponse = response
    * print jsonResponse

   * print jsonResponse.id
   * print jsonResponse.user_id
   * print jsonResponse.title
   * print jsonResponse.body
