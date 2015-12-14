## Short Description

Using Python, this project takes final rule data from the CFTC on Regulations.gov and parses it into a list of footnotes which refer to citations to comment letters.  It then uses the Stanford NER (emplying pyNER) to extract the organizations from those footnotes.  In R, these citations are then compared to comment letters in a separate database (which is not provided, due to confidentiality agreements) in order to see the percentage of different commenters on Dodd-Frank implementation at the CFTC.

## Dependencies

List what software your code depends on, as well as version numbers, like so:.

1. R, version 3.2.2 "Fire Safety"
2. Python 2.7, Anaconda distribution.
3. Stanford Name Entity Recognizer (NER) ver. 3.5.2
4. pyNER: https://github.com/dat/pyner
4. Java Runtime Environment 8 or higher


## Files

List all other files contained in the repo, along with a brief description of each one, like so:

### Code

1. 01_Data_Gathering_from_Regulations.gov.ipynb: Collects citations to comment letters from Regulations.gov API and exports to CSV
2. 02_Data-visualizations.Rmd: Loads, cleans, merges, and creates visualizations found in Results directory of the comment letters (external data) and citations.
2. CFTC_Comment_FR_References.txt: A list of Federal Register References which is used by 01_Data_Gathering... to find which rules to download from the API.

### Data

1. (2015-12-07)LogFileForTestRun.txt: A manually created log file which is a copy of the debug code in the 01_Data_Gathering.. step which generates the data file (2015-12-07)Test_Run_of_All__Errors_but_no_exception.csv
2. (2015-12-07)Test_Run_of_All__Errors_but_no_exception.csv: Contains data from the Regulations.gov API collected via 01_Data_Gathering... Includes information on all final rules related to the list of FR References in CFTC_Comment_FR_References.txt
3. [NOT UPLOADED DUE TO CONFIDENTIALITY]
    1. CFTC_Comments_with_KSC+VA_coding.csv: The comment letter database from the CFTC.  Used in 02_Data-visualizations...
    2. Unique_Organization_Values_KSC+VA_coding.csv: The unique list of organization values in the comment letter database and their classification into 17 categories.

### Results

1. Citations_All.png: A stacked bar graph of all the citations data in (2015-12-07)Test_Run_of_All__Errors_but_no_exception.csv showing the breakdown of what types of organizations were cited by the CFTC when drafting final rules which implement Dodd-Frank.
2. Citations_by_Major_Rule.png: A stacked bar graph of the citations data for 5 particularly well known rules in (2015-12-07)Test_Run_of_All__Errors_but_no_exception.csv showing the breakdown of what types of organizations were cited by the CFTC when drafting these 5 final rules which partially implement Dodd-Frank.
3. Comments_all.png: A stacked bar graph of the comments data in CFTC_Comments_with_KSC+VA_coding.csv showing the breakdown of what types of organizations commented on the CFTC proposed rules which implement Dodd-Frank.
4. Comments_by_Major_Rule.png: A stacked bar graph of the comments data in CFTC_Comments_with_KSC+VA_coding.csv showing the breakdown of what types of organizations commented on 5 particularly well known rules CFTC proposed rules which implement Dodd-Frank.

### root directory

1. ner.desktop.sh: A shell file which contains the path to the Stanford NER on my desktop computer as well as the line of bash code to to activate and configure the NER
2. ner.laptop.sh: A shell file which contains the path to the Stanford NER on my laptop computer as well as the line of bash code to to activate and configure the NER
