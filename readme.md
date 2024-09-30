# Arti Fuel Social Network Project

## Overview

This project implements a simple decentralized social network on the Fuel blockchain using the Sway programming language. The social network allows users to create profiles, make posts, and view all posts made by users. The goal of this project is to explore the capabilities of decentralized applications (dApps) while creating a basic platform for social interaction.

## Features

1. **User Management**: 
   - Users can create a profile with a unique username.
   
2. **Post Management**:
   - Users can create posts with content limited to 280 characters.
   - All posts can be retrieved and displayed, showing the user who created them.

## Code Explanation

### Contract Declaration

This line declares the beginning of a Sway contract.

### ABI Definition

The ABI (Application Binary Interface) defines the functions that can be called on the contract. 

- `create_user`: Accepts a username and creates a new user.
- `create_post`: Accepts a user ID and post content to create a new post.
- `get_posts`: Returns a list of all posts as a vector of tuples containing post ID, user ID, and content.

### Storage Definition

The storage block defines the state variables used by the contract:

- `users`: A vector storing usernames, where the index represents the user ID.
- `posts`: A vector storing posts as tuples, where each tuple contains the post ID, user ID, and content.

### Implementation of the Contract

This block implements the functions defined in the ABI.

#### Create User Function

This function allows a new user to be added to the `users` storage. It returns the user ID of the newly created user.

#### Create Post Function

This function allows a user to create a post. It generates a post ID based on the current length of the `posts` vector, adds the post to the storage, and returns the post ID.

#### Get Posts Function

This function returns all posts in the storage, allowing users to view the content created by all users.

## How to Compile and Deploy

1. Ensure you have the necessary tools installed for Sway and Fuel development.
2. Clone this repository or create a new project with the provided code.
3. Run the command to compile the contract.
4. Deploy the compiled contract to the Fuel blockchain.

## Next Steps

- Expand the functionality by adding features like comments, likes, or followers.
- Improve the user interface by integrating with a frontend framework to create a seamless user experience.
- Consider security aspects, such as preventing duplicate usernames and ensuring data integrity.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
