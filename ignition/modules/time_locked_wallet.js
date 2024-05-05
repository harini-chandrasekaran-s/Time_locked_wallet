const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("time_locked_walletModule", (m) => {
  const TimeLockedWallet = m.contract("time_locked_wallet");

  return { TimeLockedWallet };
});
