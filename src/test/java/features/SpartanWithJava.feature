Feature: Karate Java Integration

  Background:
    * def spartanUrl = 'http://52.55.102.92:8000'

  Scenario: Get a spartan with request header
    Given url spartanUrl
    And path "api/spartans"
    And header Accept = 'application/json'
    When method GET
    Then status 200


  @wip
  Scenario: Create a new spartan
    Given  url spartanUrl
    And path "api/spartans"
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'
    And request
    """
    {
        "gender": "Female",
         "name": "Lorenza",
         "phone": 3123781237
    }
    """
    When method POST
    Then status 201
    And print response

    Scenario: Create a new spartan with random data