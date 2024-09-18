contract;

use standards::src5::{SRC5, State as SRC5State};


configurable {
    INITIAL_OWNER: SRC5State = SRC5State::Initialized(Identity::Address(Address::zero()))
}

impl SRC5 for Contract {
    #[storage(read)]
    fn owner() -> SRC5State {
        INITIAL_OWNER
    }
}

// This works: 
// contract;

// use standards::src5::{SRC5, State};


// configurable {
//     INITIAL_OWNER: State = State::Initialized(Identity::Address(Address::zero()))
// }

// impl SRC5 for Contract {
//     #[storage(read)]
//     fn owner() -> State {
//         INITIAL_OWNER
//     }
// }