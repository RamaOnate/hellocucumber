Feature: Division
    Verify calculator functionalities

Scenario: Division of two numbers
    Given I have number <number1> in calculator
    When I enter the number <number2> in calculator
    Then I should get the result <result> in calculator

Examples:
| number1 | number2 | result |
| 10      | 5       | 2      |
| 20      | 4       | 5      |
| 30      | 3       | 10     |


Scenario: Division by zero
    Given I have number <number1> in calculator
    When I enter the number 0 in calculator
    Then I should get the result "Undefined" in calculator

Examples:
| number1 | result     |
| 10      | Undefined  |
| 20      | Undefined  |
| 30      | Undefined  |