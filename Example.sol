// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentGrades {
    struct Student {
        string name;
        uint grade;
    }

    mapping(address => Student) private students;
    address private owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can perform this action");
        _;
    }

    function addStudent(address _studentAddress, string memory _name, uint _grade) public onlyOwner {
        require(_grade <= 100, "Grade must be between 0 and 100");
        students[_studentAddress] = Student(_name, _grade);
    }

    function getStudent(address _studentAddress) public view returns (string memory, uint) {
        Student memory student = students[_studentAddress];
        require(bytes(student.name).length != 0, "Student not found");
        return (student.name, student.grade);
    }

    function updateGrade(address _studentAddress, uint _newGrade) public onlyOwner {
        Student storage student = students[_studentAddress];
        require(bytes(student.name).length != 0, "Student not found");
        require(_newGrade <= 100, "Grade must be between 0 and 100");
        student.grade = _newGrade;
    }

    function removeStudent(address _studentAddress) public onlyOwner {
        Student memory student = students[_studentAddress];
        require(bytes(student.name).length != 0, "Student not found");
        delete students[_studentAddress];
    }

    function validateGrade(address _studentAddress) public view {
        Student memory student = students[_studentAddress];
        require(bytes(student.name).length != 0, "Student not found");
        assert(student.grade <= 100 && student.grade >= 0);
    }

    function revertIfNotOwner() public view {
        if (msg.sender != owner) {
            revert("You are not the owner of this contract");
        }
    }
}
