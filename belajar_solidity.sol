pragma solidity 0.5.1;

contract ContractBenjamin
{
    enum State {Waiting, Ready, Active}
    string public value = 'myValue';
    State public state;
 
    struct Person
    {
        string _firstName;
        string _lastName;
    }
       uint256 public peopleCount;
    Person[] public people;
    
    constructor() public
    {
        state = State.Waiting;
    }
    function set(string memory _value) public 
    {
        value = _value;
    }
    
    function activate() public 
    {
        state = State.Active;
    }
    
    function isActive() public view returns (bool)
    {
        return state == State.Active;
    }
    
    function addPerson(string memory _firstName, string memory _lastName) public
    {
        people.push(Person(_firstName, _lastName));
        peopleCount++;
    }
}