Description: Test to verify the 'Search course by name' feature at learn.epam.com
Lifecycle:
Examples:

{transformer=FROM_LANDSCAPE}
|search-field-1			|By.xpath(//*[@id='app']/div[1]/div[1]/div[2]/div[1]/input[1])			|
|page-catalog			|By.xpath(//*[@id='app'])												|
|search-field-2			|By.xpath(//*[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/input[1])	|
|software-testing		|By.xpath(//*[contains(text(), 'Software Testing Introduction (RUS)')])	|
|log-in-to-study		|By.xpath(//*[contains(text(), 'Log in to study')])						|

Scenario: Verify the 'Search course by name' feature at learn.epam.com
!-- Open learn.epam.com start page
Given I am on page with URL `https://learn.epam.com/`
!-- Open Page "Catalog"
When I wait until element located by `<search-field-1>` appears
When I click on element located by `<search-field-1>`
When I wait until element located by `<page-catalog>` appears
!-- Use field "Search"
When I click on element located by `<search-field-2>`
When I enter `Software Testing Introduction` in field located by `<search-field-2>`

When I wait until element located by `<software-testing>` appears
When I click on element located by `<software-testing>`

When I wait until element located by `<log-in-to-study>` appears
Then number of elements found by `<log-in-to-study>` is equal to `2`
