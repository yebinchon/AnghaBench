
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _Locale_mask_t ;


 int _Locale_ALPHA ;
 int _Locale_CNTRL ;
 int _Locale_DIGIT ;
 int _Locale_LOWER ;
 int _Locale_PRINT ;
 int _Locale_PUNCT ;
 int _Locale_SPACE ;
 int _Locale_UPPER ;
 int _Locale_XDIGIT ;
 int * ctable ;
 scalar_t__ isalpha (char) ;
 scalar_t__ iscntrl (char) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ islower (char) ;
 scalar_t__ isprint (char) ;
 scalar_t__ ispunct (char) ;
 scalar_t__ isspace (char) ;
 scalar_t__ isupper (char) ;
 scalar_t__ isxdigit (char) ;
 int memset (int *,int ,int) ;

void _Locale_init(void) {

  char c;

  for (c = 0; ; ++c) {
    if (isalpha(c)) ctable[(unsigned char)c] |= _Locale_ALPHA;
    if (iscntrl(c)) ctable[(unsigned char)c] |= _Locale_CNTRL;
    if (isdigit(c)) ctable[(unsigned char)c] |= _Locale_DIGIT;
    if (isprint(c)) ctable[(unsigned char)c] |= _Locale_PRINT;
    if (ispunct(c)) ctable[(unsigned char)c] |= _Locale_PUNCT;
    if (isspace(c)) ctable[(unsigned char)c] |= _Locale_SPACE;
    if (isxdigit(c)) ctable[(unsigned char)c] |= _Locale_XDIGIT;
    if (isupper(c)) ctable[(unsigned char)c] |= _Locale_UPPER;
    if (islower(c)) ctable[(unsigned char)c] |= _Locale_LOWER;
    if (c == 127) break;
  }


  memset(&(ctable[128]), 0, 128 * sizeof(_Locale_mask_t));
}
