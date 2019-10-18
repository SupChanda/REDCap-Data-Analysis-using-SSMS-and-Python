
/*ALTER TABLE med_names  add drug_id_nammedica_1 nvarchar(255)*/

/*update med_names
set drug_id_nammedica_1 = med_codes.DRUG_ID
from med_names INNER JOIN med_codes ON med_names.nammedica_1=med_codes.MEDICATION_NAME;*/

/*SELECT mn.*,mc.DRUG_ID AS nammedica_1_DRUG_ID INTO new_med
FROM med_names AS mn LEFT JOIN med_codes AS mc ON LTRIM(RTRIM(LOWER(mn.nammedica_1)))= LTRIM(RTRIM(LOWER(mc.MEDICATION_NAME)));*/



/*ALTER TABLE new_med
DROP COLUMN nammedica_2_DRUG_ID;*/

/*ALTER TABLE new_med add nammedica_2_DRUG_ID nvarchar(255)*/

/*update new_med
set nammedica_2_DRUG_ID = med_codes.DRUG_ID
FROM med_names AS mn LEFT JOIN med_codes AS mc ON LTRIM(RTRIM(LOWER(mn.nammedica_2)))= LTRIM(RTRIM(LOWER(mc.MEDICATION_NAME)));*/

/*SELECT nammedica_1,MEDICATION_NAME,DRUG_ID FROM new_med WHERE MEDICATION_NAME IS NULL ORDER BY nammedica_1 ;
SELECT nammedica_1 FROM med_names
EXCEPT
SELECT MEDICATION_NAME FROM med_codes;*/



/*SELECT LTRIM(RTRIM(LOWER(nammedica_1))) FROM med_names WHERE nammedica_1 IS NOT NULL
EXCEPT
SELECT LTRIM(RTRIM(LOWER(MEDICATION_NAME))) FROM med_codes;*/


/*CODE FOR ADDING THE DRUG_IDS WITH THE RESPECTIVE MEDICARION NAMES*/
/*START*/

/*SELECT mn.*,mc1.DRUG_ID AS nammedica_1_DRUG_ID,
mc2.DRUG_ID AS nammedica_2_DRUG_ID,
mc3.DRUG_ID AS nammedica_3_DRUG_ID,
mc4.DRUG_ID AS nammedica_4_DRUG_ID,
mc5.DRUG_ID AS nammedica_5_DRUG_ID,
mc6.DRUG_ID AS nammedica_6_DRUG_ID,
mc7.DRUG_ID AS nammedica_7_DRUG_ID,
mc8.DRUG_ID AS nammedica_8_DRUG_ID,
mc9.DRUG_ID AS nammedica_9_DRUG_ID,
mc10.DRUG_ID AS nammedica_10_DRUG_ID,
mc11.DRUG_ID AS nammedica_11_DRUG_ID
INTO new_med_full FROM med_names AS mn 
LEFT JOIN med_codes AS mc1 ON LTRIM(RTRIM(LOWER(mn.nammedica_1)))= LTRIM(RTRIM(LOWER(mc1.MEDICATION_NAME)))
LEFT JOIN med_codes AS mc2 ON LTRIM(RTRIM(LOWER(mn.nammedica_2)))= LTRIM(RTRIM(LOWER(mc2.MEDICATION_NAME)))
LEFT JOIN med_codes AS mc3 ON LTRIM(RTRIM(LOWER(mn.nammedica_3)))= LTRIM(RTRIM(LOWER(mc3.MEDICATION_NAME)))
LEFT JOIN med_codes AS mc4 ON LTRIM(RTRIM(LOWER(mn.nammedica_4)))= LTRIM(RTRIM(LOWER(mc4.MEDICATION_NAME)))
LEFT JOIN med_codes AS mc5 ON LTRIM(RTRIM(LOWER(mn.nammedica_5)))= LTRIM(RTRIM(LOWER(mc5.MEDICATION_NAME)))
LEFT JOIN med_codes AS mc6 ON LTRIM(RTRIM(LOWER(mn.nammedica_6)))= LTRIM(RTRIM(LOWER(mc6.MEDICATION_NAME)))
LEFT JOIN med_codes AS mc7 ON LTRIM(RTRIM(LOWER(mn.nammedica_7)))= LTRIM(RTRIM(LOWER(mc7.MEDICATION_NAME)))
LEFT JOIN med_codes AS mc8 ON LTRIM(RTRIM(LOWER(mn.nammedica_8)))= LTRIM(RTRIM(LOWER(mc8.MEDICATION_NAME)))
LEFT JOIN med_codes AS mc9 ON LTRIM(RTRIM(LOWER(mn.nammedica_9)))= LTRIM(RTRIM(LOWER(mc9.MEDICATION_NAME)))
LEFT JOIN med_codes AS mc10 ON LTRIM(RTRIM(LOWER(mn.nammedica_10)))= LTRIM(RTRIM(LOWER(mc10.MEDICATION_NAME)))
LEFT JOIN med_codes AS mc11 ON LTRIM(RTRIM(LOWER(mn.nammedica_11)))= LTRIM(RTRIM(LOWER(mc11.MEDICATION_NAME)));*/

/*END*/

/*CODE FOR GETTING THE MEDICATION NAMES WHICH ARE NOT PRESENT IN THE MEDICATION CODA AND NAMES XLSX FILE*/

/*START*/
/*WITH mergedDATA AS (SELECT nammedica_1 FROM med_names WHERE nammedica_1 IS NOT NULL
EXCEPT
SELECT MEDICATION_NAME FROM med_codes
UNION
SELECT nammedica_2 FROM med_names WHERE nammedica_2 IS NOT NULL
EXCEPT
SELECT MEDICATION_NAME FROM med_codes
UNION
SELECT nammedica_3 FROM med_names WHERE nammedica_3 IS NOT NULL
EXCEPT
SELECT MEDICATION_NAME FROM med_codes
UNION
SELECT nammedica_4 FROM med_names WHERE nammedica_4 IS NOT NULL
EXCEPT
SELECT MEDICATION_NAME FROM med_codes
UNION
SELECT nammedica_5 FROM med_names WHERE nammedica_5 IS NOT NULL
EXCEPT
SELECT MEDICATION_NAME FROM med_codes
UNION
SELECT nammedica_6 FROM med_names WHERE nammedica_6 IS NOT NULL
EXCEPT
SELECT MEDICATION_NAME FROM med_codes
UNION
SELECT nammedica_7 FROM med_names WHERE nammedica_7 IS NOT NULL
EXCEPT
SELECT MEDICATION_NAME FROM med_codes
UNION
SELECT nammedica_8 FROM med_names WHERE nammedica_8 IS NOT NULL
EXCEPT
SELECT MEDICATION_NAME FROM med_codes
UNION
SELECT nammedica_9 FROM med_names WHERE nammedica_9 IS NOT NULL
EXCEPT
SELECT MEDICATION_NAME FROM med_codes
UNION
SELECT nammedica_10 FROM med_names WHERE nammedica_10 IS NOT NULL
EXCEPT
SELECT MEDICATION_NAME FROM med_codes
UNION
SELECT nammedica_11 FROM med_names WHERE nammedica_11 IS NOT NULL
EXCEPT
SELECT MEDICATION_NAME FROM med_codes)
SELECT * INTO med_name_not_present_in_med_codes FROM mergedDATA;*/

/*END*/







