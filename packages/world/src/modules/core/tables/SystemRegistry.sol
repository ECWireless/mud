// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { FieldLayout, FieldLayoutLib } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema, SchemaLib } from "@latticexyz/store/src/Schema.sol";
import { PackedCounter, PackedCounterLib } from "@latticexyz/store/src/PackedCounter.sol";

bytes32 constant _tableId = bytes32(abi.encodePacked(bytes16(""), bytes16("SystemRegistry")));
bytes32 constant SystemRegistryTableId = _tableId;

FieldLayout constant _fieldLayout = FieldLayout.wrap(
  0x0020010020000000000000000000000000000000000000000000000000000000
);

library SystemRegistry {
  /** Get the table values' field layout */
  function getFieldLayout() internal pure returns (FieldLayout) {
    return _fieldLayout;
  }

  /** Get the table's key schema */
  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _keySchema = new SchemaType[](1);
    _keySchema[0] = SchemaType.ADDRESS;

    return SchemaLib.encode(_keySchema);
  }

  /** Get the table's value schema */
  function getValueSchema() internal pure returns (Schema) {
    SchemaType[] memory _valueSchema = new SchemaType[](1);
    _valueSchema[0] = SchemaType.BYTES32;

    return SchemaLib.encode(_valueSchema);
  }

  /** Get the table's key names */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](1);
    keyNames[0] = "system";
  }

  /** Get the table's field names */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](1);
    fieldNames[0] = "resourceSelector";
  }

  /** Register the table with its config */
  function register() internal {
    StoreSwitch.registerTable(_tableId, _fieldLayout, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /** Register the table with its config (using the specified store) */
  function register(IStore _store) internal {
    _store.registerTable(_tableId, _fieldLayout, getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /** Get resourceSelector */
  function get(address system) internal view returns (bytes32 resourceSelector) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(uint160(system)));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (bytes32(_blob));
  }

  /** Get resourceSelector (using the specified store) */
  function get(IStore _store, address system) internal view returns (bytes32 resourceSelector) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(uint160(system)));

    bytes32 _blob = _store.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (bytes32(_blob));
  }

  /** Set resourceSelector */
  function set(address system, bytes32 resourceSelector) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(uint160(system)));

    StoreSwitch.setField(_tableId, _keyTuple, 0, abi.encodePacked((resourceSelector)), _fieldLayout);
  }

  /** Set resourceSelector (using the specified store) */
  function set(IStore _store, address system, bytes32 resourceSelector) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(uint160(system)));

    _store.setField(_tableId, _keyTuple, 0, abi.encodePacked((resourceSelector)), _fieldLayout);
  }

  /** Tightly pack static data using this table's schema */
  function encodeStatic(bytes32 resourceSelector) internal pure returns (bytes memory) {
    return abi.encodePacked(resourceSelector);
  }

  /** Tightly pack full data using this table's field layout */
  function encode(bytes32 resourceSelector) internal pure returns (bytes memory) {
    bytes memory _staticData = encodeStatic(resourceSelector);

    PackedCounter _encodedLengths;
    bytes memory _dynamicData;

    return abi.encodePacked(_staticData, _encodedLengths, _dynamicData);
  }

  /** Encode keys as a bytes32 array using this table's field layout */
  function encodeKeyTuple(address system) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(uint160(system)));

    return _keyTuple;
  }

  /* Delete all data for given keys */
  function deleteRecord(address system) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(uint160(system)));

    StoreSwitch.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, address system) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32(uint256(uint160(system)));

    _store.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }
}
