@permissions
Feature: Add Individual Permissions
  As a user with edit permissions
  In order to edit who has which levels of access to a document
  I want to see and edit the object-level permissions for users and groups
  
  Scenario: Editing group permissions
    Given I am logged in as "archivist1@example.com" 
    And I am on the edit permissions page for hydrangea:fixture_mods_article1
    When I press "Add Additional Permissions"
    And I fill in "permission_actor_id" with "cucumber_user"
    And I select "Read & Download" from "permission_level"
    When I press "Continue"
    Then I should see "cucumber_user has been granted read permissions for hydrangea:fixture_mods_article1"
    When I am on the edit permissions page for hydrangea:fixture_mods_article1
    Then "Read & Download" should be selected from "cucumber_user" within "form#permissions_metadata"
