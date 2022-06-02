# NitroFungi
Soil fungi underlie a phylogenetic pattern in plant growth responses to nitrogen enrichment - Random Forests
Attempting random trees, using dataset:

https://datadryad.org/stash/dataset/doi:10.5061%2Fdryad.m0ks82k
https://datadryad.org/stash/dataset/doi:10.5061/dryad.m0ks82k
https://besjournals.onlinelibrary.wiley.com/doi/10.1111/1365-2745.12983

An attempt at using random trees to answer dataset specific questions:

forest0 <- randomForest(barberi$biomass ~ barberi$number_of_roots_colonized_by_ecm_fungi)
forest1 <- randomForest(barberi$biomass ~ barberi$number_of_roots_colonized_by_am_fungi)
forest2 <- randomForest(barberi$biomass ~ barberi$number_of_roots_colonized_by_dse_fungi)
forest3 <- randomForest(barberi$biomass ~ barberi$number_of_roots_colonized_by_nonfilamentous_fungi)
forest4 <- randomForest(barberi$height ~ barberi$biomass)
forest5 <- randomForest(barberi$biomass ~ barberi$height)

Is biomas affected by number_of_roots_colonized_by_ecm_fungi
Is biomas affected by number_of_roots_colonized_by_am_fungi
etc....
....
....
