pragma solidity ^0.8.0;

contract InfiniteRegeneration320 {
    uint256 public phase;
    uint256 public constant MAX_PHASE = 320;

    event PhaseAdvanced(uint256 indexed newPhase);

    function advancePhase() external {
        phase += 1;

        if (phase > MAX_PHASE) {
            phase = 0;
        }

        emit PhaseAdvanced(phase);
    }
}
