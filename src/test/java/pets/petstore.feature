Feature: Petstore API tests

  Background:
    * def urlBase = 'https://petstore.swagger.io/v2'
    * def petPath = '/pet'
    * def addjsonData = read('classpath:json/add_pet.json')
    * def upjsonData = read('classpath:json/pet_update.json')

  Scenario: Add a new pet to the store
    Given url urlBase + petPath
    And request addjsonData
    When method post
    Then status 200
    And match response.name == 'Doggie'
    And match response.id == 12345


  Scenario: Get a pet by ID
    Given url urlBase + petPath + '/12345'
    When method get
    Then status 200
    And match response.name == 'Doggie'
    And match response.status == 'available'

  Scenario: Update pet's name and status to "sold"
    Given url urlBase + petPath
    And request upjsonData
    When method put
    Then status 200
    And match response.name == 'Doggie2'
    And match response.status == 'sold'

  Scenario: Get pet by status "sold"
    Given url urlBase + '/pet/findByStatus'
    And param status = 'sold'
    When method get
    Then status 200
    And match response[0].status == 'sold'
    * def pets = response
    * def filteredPet = karate.filter(pets, function(pet){ return pet.name == 'Doggie2' })
    * print filteredPet
