const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

result = 0;

function startOperation(number) {
  result = number;
}

function DivideBy(number) {
  if(number != 0) 
    return result = result / number;
  else
    return result = "Undefined";
}

Given('I have number {float} in calculator', function (float) {
    startOperation(float);
});

When('I enter the number {float} in calculator', function (float) {
  DivideBy(float);
});

Then('I should get the result {float} in calculator', function (float) {
  assert.strictEqual(float, result);
});

Then('I should get the result {string} in calculator', function (string) {
  assert.strictEqual(string, result);
});