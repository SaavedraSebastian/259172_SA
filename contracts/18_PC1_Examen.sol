// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.1;

import "hardhat/console.sol";

contract polleria259172 {

    struct Plato {
        uint256 id;
        string nombre;
        uint256 precio;
        string tipo;
        bool estado;
    }

    Plato[] public platos;

    uint256 public posicion;
    address public direccion;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }

    function agregarElemento(uint256 _id, string memory _nombre, uint256 _precio, string memory _tipo, bool _estado) public {

        platos.push(Plato(_id, _nombre, _precio, _tipo, _estado));
    }

    function contarElementos() public view returns (uint256) {
        return platos.length;
    }

    function cambiarDireccion(address _direccion) public {
        direccion = _direccion;
    }

    function mostrarActivos() external view {
        for (uint256 i = 0; i < platos.length; i++) {
            if (platos[i].estado == true) {
                console.log("Plato activo", platos[i].id, platos[i].nombre);
            }
        }
    }
}