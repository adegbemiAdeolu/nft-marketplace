//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

//Storage
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

//Counters
import "@openzeppelin/contracts/utils/Counters.sol";


contract NFT is ERC721URIStorage {
    //auto-increment field for each token
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    //Address of NFT marketplace
    address contractAddress;

    constructor(address marketplaceAddress) ERC721("Impact Tokens", "IMT") {
        contractAddress = marketplaceAddress;
    }

    /// @notice create a new token
    /// @param tokenURI : tokenURI
    function createToken(string memory tokenURI) public returns(uint) {
        //set a new token id for the token to be minted
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();

        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI); //generate the URI
        setApprovalForAll(contractAddress, true); //grant transaction permission to marketplace

        //return token ID
        return newItemId;
    }
}


