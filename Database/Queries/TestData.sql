--EXEC GetRecipesMatchingIngredients @IDs = '172183,169656,2710708,173241,173471,2709351,746775', @ForgiveMissingIngredients = 1;



EXEC MatchRecipes 
@IngredientsIDs = '172183,169656,2710708,173241,173471,2709351,746775', 
@ForgiveMissingIngredients = 2, 
@Cuisines = '',
@MaxTimeInMinutes = 9999
;

--EXEC GetAllCuisinesAndIngredients;;

