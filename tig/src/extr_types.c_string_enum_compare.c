
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ascii_toupper (char const) ;
 scalar_t__ string_enum_sep (char const) ;

int
string_enum_compare(const char *str1, const char *str2, int len)
{
 size_t i;


 for (i = 0; i < len; i++) {
  if (ascii_toupper(str1[i]) == ascii_toupper(str2[i]))
   continue;

  if (string_enum_sep(str1[i]) &&
      string_enum_sep(str2[i]))
   continue;

  return str1[i] - str2[i];
 }

 return 0;
}
