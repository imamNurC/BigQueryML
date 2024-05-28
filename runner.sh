#!/bin/bash

runner1 =  "https://raw.githubusercontent.com/imamNurC/BigQueryML/main/GetShotDistance.sql"
runner2 =  "https://raw.githubusercontent.com/imamNurC/BigQueryML/main/GetShotAngle.sql"
runner3 = "https://raw.githubusercontent.com/imamNurC/BigQueryML/main/model1.sql"
runner4 =  "https://raw.githubusercontent.com/imamNurC/BigQueryML/main/model2.sql"
runner5 = "https://raw.githubusercontent.com/imamNurC/BigQueryML/main/"

bq query --use_legacy_sql=false  < "$runner1"
bq query --use_legacy_sql=false  < "$runner2"
bq query --use_legacy_sql=false  < "$runner3"
bq query --use_legacy_sql=false  "SELECT * FROM ML.WEIGHTS(MODEL soccer.xg_logistic_reg_model);"


bq query --use_legacy_sql=false  < "$runner4"
bq query --use_legacy_sql=false  < "$runner5"




