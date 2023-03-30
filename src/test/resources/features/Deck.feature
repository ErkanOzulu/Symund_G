Feature: Deck Module
  As a user, I should be able to manage my works by creating a
  new board/list/card and modifying them under Deck Module.

  Background: user is expected to be on the dashboard page
    Given user is logged in and on the dashboard page
    And user navigates to "deck"

  @deck
  Scenario Outline: User can create a new board
    When User can see the three-line button and click it
    And User see the opened sidebar
    And User see the add-board button and click it
    And User sees the popup box and enters the <"board name">
    And User click the submit button
    Then User can see the created <"board name"> on the side bar

    Examples:
      | board name  |
      | Galatasaray |
      | New board   |
      | New123      |
      | New 123     |
      | 123 new     |