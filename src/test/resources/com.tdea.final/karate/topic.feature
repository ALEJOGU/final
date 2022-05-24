Feature: getAndPost

  Scenario: create_Topic1
    Given url 'http://localhost:8080/topic'
    And request {name:'Yeahmarakuyeah_extremo'}
    When method post
    Then status 200

  Scenario: create_Topic2
    Given url 'http://localhost:8080/topic'
    And request {name:''}
    When method post
    Then status 200

  Scenario: consultar_Topics
    Given url 'http://localhost:8080/topic'
    When method get
    Then status 200