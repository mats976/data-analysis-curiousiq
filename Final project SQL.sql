
 /***In this part, you are going to have access to the Database Airbnb Listing in SQL Server Management 
Studio of CuriousIQ and respond to the following questions: 
? You have been requested to extract some information about the Host. Write a query that 
displays the following columns (ensure that the Name of each column is as follows):
o Listing Name, Host location, Host Response Time, Host Response Rate, Host is 
superhost, Host Total listings count, Host Identity verified
? Find the listings with price less than 100/night
? What is the minimum review scores rating per property type
? How many reviews per neighbourhood
? How many reviews per listing name and what is the listing name with the most reviews?* ****/

Select [name],[host_location],[host_response_time],[host_response_rate], [host_is_superhost],
[host_total_listings_count], [host_identity_verified]
FROM [ListingsSmall]
where price  <100

Select MIN(review_scores_rating) AS Minimum_Scores_rating
FROM [ListingsSmall]


Select COUNT(neighbourhood) AS reviews_per_neighbourhood
FROM [ListingsSmall]

Select COUNT(name) AS Listing_name
FROM [ListingsSmall]

Select [name],[host_location],[host_response_time],[host_response_rate], [host_is_superhost],[host_total_listings_count],[host_identity_verified]
FROM [ListingsSmall]
ORDER BY review_scores_accuracy  DESC


