Feature: Login Page
  In order to keep out the bad guys
  As a user
  I want to have to login to see my private page

  Scenario: Authenticated User
    Given the login page
    When I log in with username and password as "admin"
    Then I should see the secret page with my my username "admin"
