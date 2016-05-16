Feature: Create New Product Feature

  Background:
    Given I am a signed up user "john@mailinator.com"

  Scenario: Not Signed In
    Given I am not signed in
    When I try to access the new product page
    Then I am being redirected to the sign in page

  Scenario: Signed In
    Given I am signed in
    When I try to access the new product page
    Then I am being transferred to the new product page
