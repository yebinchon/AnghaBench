
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LCID ;



__attribute__((used)) static LCID LocaleFromHex(const char* locale) {
  unsigned long result = 0;
  int digit;
  while (*locale) {
    result <<= 4;
    digit = (*locale >= '0' && *locale <= '9') ? *locale - '0':
            (*locale >= 'A' && *locale <= 'F') ? (*locale - 'A') + 10
                                               : (*locale - 'a') + 10;
    result += digit;
    ++locale;
  }
  return (LCID)result;
}
