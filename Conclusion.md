# Conclusion for PetStore API Tests

## Overview
This test exercise involved using **Karate** to automate testing of the PetStore API (https://petstore.swagger.io/). The test cases focused on performing the following operations:

1. Adding a pet to the store.
2. Querying a pet by its ID.
3. Updating the pet's name and status to "sold."
4. Querying pets by their status.

## Results
![Reporte de Ejecución](https://github.com/vACKONERep/SofkaAPI/blob/main/brave_dB1swsqniY.png)
![Reporte de Ejecución](https://github.com/vACKONERep/SofkaAPI/blob/main/brave_NxfnQcEFdI.png)

## Key Findings

1. **Add a Pet**:
   - The "add pet" feature worked correctly. A new pet was successfully added to the store, and a unique ID was returned in the response. This verified that the API endpoint to create pets is functioning properly.

2. **Query Pet by ID**:
   - The query by pet ID was successful. The API returned the correct pet details when a valid pet ID was provided, confirming that the GET request by ID is correctly implemented.

3. **Update Pet**:
   - Updating the pet's name and status was successful. The pet details were modified correctly, and the status was updated to "sold," which verifies that the PUT request is working as expected. 

4. **Query Pets by Status**:
   - The query by status returned the correct results. Pets with the status "sold" were retrieved successfully, confirming that filtering by status is functioning properly.

## Lessons Learned

- **Karate's Simplicity**: Karate proved to be an effective and simple framework for API testing. The ability to write tests in a human-readable DSL allowed for quick test creation and clear reports.
  
- **Handling API Responses**: While performing tests, we learned how to handle and validate different response types, including status codes, body content, and headers.

- **Assertions and Validation**: Karate's built-in assertions (such as `match`, `assert`, etc.) made it easy to verify the correctness of API responses.

## Conclusions

- The PetStore API passed all of the defined test cases.
- Using **Karate** for RESTful API testing provided a fast and efficient way to ensure API correctness.
- The tests are fully automated, making it easier to integrate them into a continuous integration pipeline.
- The exercise helped solidify knowledge of REST API testing and provided hands-on experience with Karate's capabilities for API testing.

These tests can be expanded by adding more complex scenarios, such as invalid inputs, testing with different types of pets, and additional status checks.
