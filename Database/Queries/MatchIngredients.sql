DECLARE @IDs NVARCHAR(MAX) = '172183,169656,2710708,173241,173471,2709351,746775';

WITH IngredientsIDs AS (
    SELECT CAST(value AS INT) AS ProcessedIDs
    FROM STRING_SPLIT(@IDs, ',')
)

SELECT 
    RI.Recipe_ID,
    COUNT(*) AS NumberOfMatchingIngredients
FROM Recipes_Ingredients RI
JOIN IngredientsIDs II
    ON RI.Ingredient_ID = II.ProcessedIDs
GROUP BY RI.Recipe_ID;
