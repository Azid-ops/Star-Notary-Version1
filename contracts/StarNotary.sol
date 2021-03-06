pragma solidity 0.5.16;
contract StarNotary
{
    string public starName;
    address public starOwner;

    event starClaimed(address owner);

    constructor() public
    {
        starName = "AzixAce";
    }

    function claimStar() public
    {
        starOwner = msg.sender;
        emit starClaimed(msg.sender);
    }
}