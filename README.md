# StudentGrades Smart Contract

## Overview

The `StudentGrades` smart contract allows the contract owner to manage student records, including adding, updating, retrieving, and removing student information. Each student has a name and a grade, which must be between 0 and 100.

## Prerequisites

- Solidity version ^0.8.0
- An Ethereum wallet for deploying and interacting with the contract
- A development environment such as Remix, Truffle, or Hardhat

## Contract Details

### SPDX License Identifier

```solidity
// SPDX-License-Identifier: MIT

## Pragma Directive
pragma solidity ^0.8.0;
## Contract Definition
The StudentGrades contract contains the following key components:

### Structures

struct Student {
    string name;
    uint grade;
}

.Student: Represents a student's information with name (string) and grade (uint).

### State Variables
mapping(address => Student) private students;
address private owner;

.students: A mapping from student addresses to their corresponding Student structs.
.owner: The address of the contract owner.





