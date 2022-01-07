
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZEOF_REV ;
 int isxdigit (char const) ;

bool
iscommit(const char *str)
{
 int pos;

 for (pos = 0; str[pos]; pos++) {
  if (!isxdigit(str[pos]))
   return 0;
 }

 return 7 <= pos && pos < SIZEOF_REV;
}
