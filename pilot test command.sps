* Encoding: UTF-8.
##Descriptive statistics

DATASET ACTIVATE DataSet1.
DESCRIPTIVES VARIABLES=A1 A2 q9 A3 A4 A5
  /STATISTICS=MEAN STDDEV MIN MAX.

FREQUENCIES VARIABLES=A1 A2 q9 A3 A4 A5
  /ORDER=ANALYSIS.

COMPUTE Humanization=MEAN(C1,C2).
EXECUTE.

COMPUTE superordinate=MEAN(C9,C10,D1).
EXECUTE.

COMPUTE emphathy=MEAN(C11,C12,C13).
EXECUTE.

COMPUTE attitude=MEAN(C14,C15,C16,C17,C18).
EXECUTE.

COMPUTE support=MEAN(E1,E2).
EXECUTE.

##Reliability

RELIABILITY
  /VARIABLES=C1 C2
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.


RELIABILITY
  /VARIABLES=C9 C10 D1
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=C11 C12 C13
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=C14 C15 C16 C17 C18
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=E1 E2
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

##Manipulation check

T-TEST GROUPS=q10(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=superordinate
  /ES DISPLAY(TRUE)
  /CRITERIA=CI(.95).

##Comparison of experiment and control groups

T-TEST GROUPS=q10(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=Humanization emphathy attitude support F1
  /ES DISPLAY(TRUE)
  /CRITERIA=CI(.95).


