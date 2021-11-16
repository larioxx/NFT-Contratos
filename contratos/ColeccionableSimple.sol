// SPDX-License-Identifier: MIT

// Modificado por Larioxx
/**
    !¡Descargo de responsabilidad!
    Estos contratos se han utilizado para crear tutoriales,
    y fueron creados con el propósito de enseñar a la gente
    cómo crear contratos inteligentes en blockchain.
    por favor revise este código por su cuenta antes de usar cualquiera de
    el siguiente código para la producción.
    Larioxx no será responsable de ninguna manera por el uso
    del código. Dicho esto, el código ha sido probado según
    el mejor conocimiento de los desarrolladores para que funcione según lo previsto.
*/

pragma solidity 0.6.6;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract ColeccionableSimple is ERC721 {
    uint256 public tokenCounter;
    constructor () public ERC721 ("Non Fungible Token", "NFT"){
        tokenCounter = 0;
    }

    function createCollectible(string memory tokenURI) public returns (uint256) {
        uint256 newItemId = tokenCounter;
        _safeMint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);
        tokenCounter = tokenCounter + 1;
        return newItemId;
    }

}
