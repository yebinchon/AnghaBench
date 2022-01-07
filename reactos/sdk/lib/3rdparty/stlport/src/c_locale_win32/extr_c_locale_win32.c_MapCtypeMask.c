
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C1_ALPHA ;
 unsigned short C1_CNTRL ;
 int C1_DIGIT ;
 int C1_LOWER ;
 int C1_PUNCT ;
 int C1_SPACE ;
 int C1_UPPER ;
 int C1_XDIGIT ;
 int MAP (int ,unsigned short) ;
 unsigned short _Locale_ALPHA ;
 unsigned short _Locale_CNTRL ;
 unsigned short _Locale_DIGIT ;
 unsigned short _Locale_LOWER ;
 unsigned short _Locale_PRINT ;
 unsigned short _Locale_PUNCT ;
 unsigned short _Locale_SPACE ;
 unsigned short _Locale_UPPER ;
 unsigned short _Locale_XDIGIT ;

unsigned short MapCtypeMask(unsigned short mask) {
  unsigned short ret = 0;
  MAP(C1_UPPER, _Locale_UPPER | _Locale_PRINT);
  MAP(C1_LOWER, _Locale_LOWER | _Locale_PRINT);
  MAP(C1_DIGIT, _Locale_DIGIT | _Locale_PRINT);
  MAP(C1_SPACE, _Locale_SPACE | _Locale_PRINT);
  MAP(C1_PUNCT, _Locale_PUNCT | _Locale_PRINT);

  MAP(C1_XDIGIT, _Locale_XDIGIT | _Locale_PRINT);
  MAP(C1_ALPHA, _Locale_ALPHA | _Locale_PRINT);
  if ((mask & C1_CNTRL) != 0) { ret |= _Locale_CNTRL; ret &= ~_Locale_PRINT; }
  return ret;
}
