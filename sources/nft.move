module nft_exam_sui::nft {
    use sui::object::{Self, UID};
    use sui::transfer;
    use sui::tx_context::{Self, TxContext};
    use std::string::String;

    struct NFT has key, store {
        id: UID,
        name: String,
        description: String,
        // add any custom attributes here
    }

    public entry fun mint(name: String, description: String, ctx: &mut TxContext) {
        // create the new NFT
        let nft = NFT {
            id: object::new(ctx),
            name,
            description,

            // add some atribute here
        };

        // mint and send the NFT to the caller

        let sender = tx_context::sender(ctx);
        
        // transfer the NFT to buyer

        transfer::public_transfer(nft, sender);
    }

    // method transfer nft to an another address

    #[allow(lint(custom_state_change))]
    public entry fun transfer(nft: NFT, recipient: address) {
        transfer::transfer(nft, recipient);
    }

}