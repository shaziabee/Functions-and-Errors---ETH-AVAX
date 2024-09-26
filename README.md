# StudentGrades Smart Contract

## Overview

The `StudentGrades` smart contract allows the contract owner to manage student records, including adding, updating, retrieving, and removing student information. Each student has a name and a grade, which must be between 0 and 100.

## Prerequisites

- Solidity version ^0.8.0
- An Ethereum wallet for deploying and interacting with the contract
- A development environment such as Remix, Truffle, or Hardhat

## Contract Details

### SPDX License Identifier

The contract uses the MIT license.

### Pragma Directive

The contract is written for Solidity version 0.8.0 or higher.

### Contract Definition

The `StudentGrades` contract contains the following key components:

#### Structures

- **Student**: Represents a student's information with `name` (string) and `grade` (uint).

#### State Variables

- **students**: A mapping from student addresses to their corresponding `Student` structs.
- **owner**: The address of the contract owner.

#### Constructor

- Sets the contract deployer as the owner.

#### Modifiers

- **onlyOwner**: Restricts certain functions to be called only by the contract owner.

#### Functions

- **addStudent**
  - Adds a student with the specified address, name, and grade. Only the owner can call this function.

- **getStudent**
  - Retrieves the name and grade of a student by their address. This function is publicly accessible.

- **updateGrade**
  - Updates the grade of an existing student. Only the owner can call this function.

- **removeStudent**
  - Removes a student record by their address. Only the owner can call this function.

- **validateGrade**
  - Validates that a student's grade is between 0 and 100.

- **revertIfNotOwner**
  - Reverts the transaction if the caller is not the owner.

## License

This project is licensed under the MIT License.
