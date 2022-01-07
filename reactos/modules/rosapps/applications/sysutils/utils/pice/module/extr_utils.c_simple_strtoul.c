
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PICE_isdigit (char const) ;
 scalar_t__ PICE_islower (char const) ;
 scalar_t__ PICE_isxdigit (char const) ;
 char const PICE_toupper (char const) ;

unsigned long simple_strtoul(const char *cp,char **endp,unsigned int base)
{
 unsigned long result = 0,value;

 if (!base) {
  base = 10;
  if (*cp == '0') {
   base = 8;
   cp++;
   if ((*cp == 'x') && PICE_isxdigit(cp[1])) {
    cp++;
    base = 16;
   }
  }
 }
 while (PICE_isxdigit(*cp) && (value = PICE_isdigit(*cp) ? *cp-'0' : (PICE_islower(*cp)
     ? PICE_toupper(*cp) : *cp)-'A'+10) < base) {
  result = result*base + value;
  cp++;
 }
 if (endp)
  *endp = (char *)cp;
 return result;
}
