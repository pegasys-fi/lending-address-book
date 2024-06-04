// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0;

import {DataTypes} from 'lending-core/contracts/protocol/libraries/types/DataTypes.sol';
import {Errors} from 'lending-core/contracts/protocol/libraries/helpers/Errors.sol';
import {ConfiguratorInputTypes} from 'lending-core/contracts/protocol/libraries/types/ConfiguratorInputTypes.sol';
import {IPoolAddressesProvider} from 'lending-core/contracts/interfaces/IPoolAddressesProvider.sol';
import {IAToken} from 'lending-core/contracts/interfaces/IAToken.sol';
import {IPool} from 'lending-core/contracts/interfaces/IPool.sol';
import {IPoolConfigurator} from 'lending-core/contracts/interfaces/IPoolConfigurator.sol';
import {IPriceOracleGetter} from 'lending-core/contracts/interfaces/IPriceOracleGetter.sol';
import {IAaveOracle} from 'lending-core/contracts/interfaces/IAaveOracle.sol';
import {IACLManager as BasicIACLManager} from 'lending-core/contracts/interfaces/IACLManager.sol';
import {IPoolDataProvider} from 'lending-core/contracts/interfaces/IPoolDataProvider.sol';
import {IDefaultInterestRateStrategy} from 'lending-core/contracts/interfaces/IDefaultInterestRateStrategy.sol';
import {IReserveInterestRateStrategy} from 'lending-core/contracts/interfaces/IReserveInterestRateStrategy.sol';
import {IPoolDataProvider as IAaveProtocolDataProvider} from 'lending-core/contracts/interfaces/IPoolDataProvider.sol';
import {AggregatorInterface} from 'lending-core/contracts/dependencies/chainlink/AggregatorInterface.sol';

interface IACLManager is BasicIACLManager {
  function hasRole(bytes32 role, address account) external view returns (bool);

  function DEFAULT_ADMIN_ROLE() external pure returns (bytes32);

  function renounceRole(bytes32 role, address account) external;

  function getRoleAdmin(bytes32 role) external view returns (bytes32);

  function grantRole(bytes32 role, address account) external;

  function revokeRole(bytes32 role, address account) external;
}
