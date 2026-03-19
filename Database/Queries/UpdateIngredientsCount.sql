UPDATE R
SET Ingredients_Count = Counts.TotalIngredients
FROM Recipes R
JOIN (
    SELECT Recipe_ID, COUNT(*) AS TotalIngredients
    FROM Recipes_Ingredients
    GROUP BY Recipe_ID
) Counts
ON R.ID = Counts.Recipe_ID;