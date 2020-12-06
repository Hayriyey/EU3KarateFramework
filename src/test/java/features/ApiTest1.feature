Feature: exchange rate api tests

  @wip
  Scenario: basic test with status code validation
    Given url 'https://api.exchangeratesapi.io/latest'
    When method GET
    Then status 200

  @wip
  Scenario: get rates fro specific day
    Given url 'https://api.exchangeratesapi.io/2010-01-12'
    When method get
    Then status 200
