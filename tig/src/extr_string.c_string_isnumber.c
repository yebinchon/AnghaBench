
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (char const) ;

bool
string_isnumber(const char *str)
{
 int pos;

 for (pos = 0; str[pos]; pos++) {
  if (!isdigit(str[pos]))
   return 0;
 }

 return pos > 0;
}
