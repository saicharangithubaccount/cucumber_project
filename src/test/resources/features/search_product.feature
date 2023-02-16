Feature: Search a product feature

Background: User has to login
  Given User is logged in

  @smoke
  Scenario: Verify that the user can able to search a product
    Given the user navigates to the home page
    When the user enter the product name
    Then the product results should be displayed

  Scenario: Login
    Given User is on Home Page
    When User Navigate to LogIn Page
    And User enters "testuser" and "test@123"


  Scenario Outline: Successful Login with Valid Credentials
    Given User is on Home Page
    When User Navigate to LogIn Page
    And User enters "<username>" and "<password>"
    Then Message displayed Login Successfully
    Examples:
      | username   | password |
      | testuser_1 | Test@153 |
      | testuser_2 | Test@153 |