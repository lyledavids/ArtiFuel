contract;

abi SocialNetworkContract {
    #[storage(write)]
    fn create_user(username: [u8; 100]) -> u64;

    #[storage(write)]
    fn create_post(user_id: u64, content: [u8; 280]) -> u64;

    #[storage(read)]
    fn get_posts() -> Vec<(u64, u64, [u8; 280])>; // (post_id, user_id, content)
}

storage {
    users: Vec<([u8; 100])>; // Store usernames
    posts: Vec<(u64, u64, [u8; 280])>; // Store (post_id, user_id, content) pairs
}

impl SocialNetworkContract for Contract {
    #[storage(write)]
    fn create_user(username: [u8; 100]) -> u64 {
        storage.users.push(username); // Add the new user
        (storage.users.len() - 1) as u64 // Return the new user ID
    }

    #[storage(write)]
    fn create_post(user_id: u64, content: [u8; 280]) -> u64 {
        // Create a new post for the specified user
        let post_id = storage.posts.len() as u64; // Get the current ID based on length
        storage.posts.push((post_id, user_id, content)); // Add the new post
        post_id // Return the new post ID
    }

    #[storage(read)]
    fn get_posts() -> Vec<(u64, u64, [u8; 280])> {
        // Return all posts
        storage.posts.clone() // Return a clone of the posts vector
    }
}
