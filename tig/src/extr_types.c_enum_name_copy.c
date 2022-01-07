
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ascii_tolower (char const) ;
 scalar_t__ string_enum_sep (char) ;

bool
enum_name_copy(char buf[], size_t bufsize, const char *name)
{
 int bufpos;

 for (bufpos = 0; name[bufpos] && bufpos < bufsize - 1; bufpos++) {
  buf[bufpos] = ascii_tolower(name[bufpos]);
  if (string_enum_sep(buf[bufpos]))
   buf[bufpos] = '-';
 }

 buf[bufpos] = 0;
 return bufpos < bufsize;
}
