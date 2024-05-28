#!/bin/bash

runner1 =  "GetShotDistance.sql"
runner2 =  "GetShotAngle.sql"


bq query --use_legacy_sql=false  < "$runner1"
bq query --use_legacy_sql=false  < "$runner2"



