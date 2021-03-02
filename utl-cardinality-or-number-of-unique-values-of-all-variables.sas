Cardinality or number of unique values of all variables

SAS FORUM
https://tinyurl.com/3b2eae8t
https://communities.sas.com/t5/SAS-Programming/How-to-list-all-distinct-value-in-one-colum-in-the-dataset/m-p/722980

This github;
https://tinyurl.com/54s7kkyy
https://github.com/rogerjdeangelis/utl-cardinality-or-number-of-unique-values-of-all-variables

Verification and validation macro
https://tinyurl.com/2hvw5swn
https://raw.githubusercontent.com/rogerjdeangelis/voodoo/master/oto_voodoo.sas

*_                   _
(_)_ __  _ __  _   _| |_
| | '_ \| '_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
;

Table SASHELP.CLASS

* Location of code in github;
https://tinyurl.com/2hvw5swn
https://raw.githubusercontent.com/rogerjdeangelis/voodoo/master/oto_voodoo.sas

*
 _ __  _ __ ___   ___ ___  ___ ___
| '_ \| '__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
;

* DOWNLOAD CODE FROM GITHUB;
* USING SAS;

filename _bcot "d:/sas/voodoo.sas";
proc http
   method='get'
   url="https://tinyurl.com/2hvw5swn"
   out= _bcot;
run;quit;

* USING R;

%utl_submit_r64('
download.file("https://tinyurl.com/2hvw5swn", "d:/sas/voodoo.sas")
');

* Compile verification and validation macro;

%inc "d:/sas/voodoo.sas";

* call macro;
%utlvdoc(
   libname=sashelp
  ,data=class
);

*            _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| '_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
;

DATA VERIFICATION + VALIDATION FOR SASHELP.CLASS
class
Dataset summary for SASHELP.CLASS

    Observations:       19
    Variables:          5
    ----------------------------------------

    Variables by type:
    -------------------
       Numeric:        3
         Quantity:          3
         Date/Time:         0

       Character:      2
    =========================


    Missing or uniformly evaluated variables:
    ------------------------------------------
      - missing for all observations:      0
      - uniformly evaluated -- all:        0
          with one or more missing values:      0
          with no missing values:               0

    ==================================================


 #     Variable       Unique Values       Label
---    --------       -------------       -----

  1    AGE                       6
  2    HEIGHT                   17
  3    NAME                     19        ** Primary Key
  4    SEX                       2
  5    WEIGHT                   15

