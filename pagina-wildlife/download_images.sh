#!/usr/bin/env bash
set -euo pipefail
mkdir -p images
# Wikimedia Commons (permanentes)
curl -L --fail -o images/lion_male_6y.jpg "https://upload.wikimedia.org/wikipedia/commons/9/9e/Lion_%28Panthera_leo%29_male_6y.jpg"
curl -L --fail -o images/elephant_african_2.jpg "https://upload.wikimedia.org/wikipedia/commons/8/84/African_elephant_%28Loxodonta_africana%29_2.jpg"
curl -L --fail -o images/tiger_2.jpg "https://upload.wikimedia.org/wikipedia/commons/4/41/Tiger-2.jpg"
curl -L --fail -o images/giraffe_closeup.jpg "https://upload.wikimedia.org/wikipedia/commons/e/ef/Giraffe-closeup-head.jpg"
curl -L --fail -o images/three_giraffes_01.jpg "https://upload.wikimedia.org/wikipedia/commons/8/89/Three_giraffes_01.jpg"
curl -L --fail -o images/plains_zebra.jpg "https://upload.wikimedia.org/wikipedia/commons/e/e3/Plains_Zebra_Equus_quagga.jpg"

# Replace previously used Unsplash dynamic endpoints with stable Wikimedia Commons files
# (filenames kept to match index.html expectations)
# Parrot (blue-and-yellow macaw) - CC BY/CC BY-SA
curl -L --fail -o images/parrot_sig10.jpg "https://upload.wikimedia.org/wikipedia/commons/e/ec/Ara_ararauna_Luc_Viatour.jpg"
# Eagle (African fish eagle) - CC BY-SA
curl -L --fail -o images/eagle_sig11.jpg "https://upload.wikimedia.org/wikipedia/commons/8/87/African_fish_eagle_%28Haliaeetus_vocifer%29_Ethiopia.jpg"
# Flamingo (Giles Laurent) - CC BY-SA
curl -L --fail -o images/flamingo_sig12.jpg "https://upload.wikimedia.org/wikipedia/commons/b/b6/001_Greater_flamingo_in_flight_in_the_Camargue_Photo_by_Giles_Laurent.jpg"
# Owl (Tyto alba) - CC BY 3.0
curl -L --fail -o images/owl_sig13.jpg "https://upload.wikimedia.org/wikipedia/commons/d/d4/Tyto_alba_%28Scopoli%2C_1769%29.jpg"
# Snake (Grass snake) - CC BY 3.0
curl -L --fail -o images/snake_sig14.jpg "https://upload.wikimedia.org/wikipedia/commons/d/d8/The_Grass_Snake_-_Natrix_natrix.jpg"
# Crocodile (Nile crocodile head) - CC BY 2.0
curl -L --fail -o images/crocodile_sig15.jpg "https://upload.wikimedia.org/wikipedia/commons/b/bd/Nile_crocodile_head.jpg"
# Frog (Golden-eyed tree frog) - CC BY-SA 4.0
curl -L --fail -o images/frog_sig16.jpg "https://upload.wikimedia.org/wikipedia/commons/c/c6/Golden-eyed_tree_frog_%28Agalychnis_annae%29.jpg"
# Savanna scene (Lake Manyara wildlife) - CC BY-SA
curl -L --fail -o images/savanna_sig17.jpg "https://upload.wikimedia.org/wikipedia/commons/4/48/Lake_Manyara_Wildlife.jpg"

# Gallery thumbnails and large variants — reuse same stable files (keeps script simple)
curl -L --fail -o images/parrot_26.jpg "https://upload.wikimedia.org/wikipedia/commons/e/ec/Ara_ararauna_Luc_Viatour.jpg"
curl -L --fail -o images/parrot_26_large.jpg "https://upload.wikimedia.org/wikipedia/commons/e/ec/Ara_ararauna_Luc_Viatour.jpg"
curl -L --fail -o images/eagle_27.jpg "https://upload.wikimedia.org/wikipedia/commons/8/87/African_fish_eagle_%28Haliaeetus_vocifer%29_Ethiopia.jpg"
curl -L --fail -o images/eagle_27_large.jpg "https://upload.wikimedia.org/wikipedia/commons/8/87/African_fish_eagle_%28Haliaeetus_vocifer%29_Ethiopia.jpg"
curl -L --fail -o images/flamingo_28.jpg "https://upload.wikimedia.org/wikipedia/commons/b/b6/001_Greater_flamingo_in_flight_in_the_Camargue_Photo_by_Giles_Laurent.jpg"
curl -L --fail -o images/flamingo_28_large.jpg "https://upload.wikimedia.org/wikipedia/commons/b/b6/001_Greater_flamingo_in_flight_in_the_Camargue_Photo_by_Giles_Laurent.jpg"
curl -L --fail -o images/crocodile_29.jpg "https://upload.wikimedia.org/wikipedia/commons/b/bd/Nile_crocodile_head.jpg"
curl -L --fail -o images/crocodile_29_large.jpg "https://upload.wikimedia.org/wikipedia/commons/b/bd/Nile_crocodile_head.jpg"
curl -L --fail -o images/penguin_30.jpg "https://upload.wikimedia.org/wikipedia/commons/b/bd/African_penguin%2C_Cape_Town_%28_1050598%29.jpg"
curl -L --fail -o images/penguin_30_large.jpg "https://upload.wikimedia.org/wikipedia/commons/b/bd/African_penguin%2C_Cape_Town_%28_1050598%29.jpg"
curl -L --fail -o images/otter_31.jpg "https://upload.wikimedia.org/wikipedia/commons/b/bd/018_Giant_otter_eating_a_fish_in_Encontro_das_%C3%81guas_State_Park_Photo_by_Giles_Laurent.jpg"
curl -L --fail -o images/otter_31_large.jpg "https://upload.wikimedia.org/wikipedia/commons/b/bd/018_Giant_otter_eating_a_fish_in_Encontro_das_%C3%81guas_State_Park_Photo_by_Giles_Laurent.jpg"
curl -L --fail -o images/rhino_32.jpg "https://upload.wikimedia.org/wikipedia/commons/3/36/Rhinoceros_in_South_Africa_adjusted.jpg"
curl -L --fail -o images/rhino_32_large.jpg "https://upload.wikimedia.org/wikipedia/commons/3/36/Rhinoceros_in_South_Africa_adjusted.jpg"

# Note: remaining Unsplash items (research_scientist_sig3, bear_sig9, rainforest_sig18, wetland_sig19, coast_sig20,
# keeper_sig33, tour_sig34) are left for manual replacement or future Commons lookup; leaving them may still fail if run.

echo "All images downloaded into images/"
