// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.1;

contract polleria259172 {

    struct Plato {
        uint256 id;
        string nombre;
        uint256 precio;
        string tipo;
    }

    Plato[] public platos;

    uint256 public posicion;
    address public direccion;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }
}