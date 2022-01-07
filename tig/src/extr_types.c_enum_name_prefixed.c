
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZEOF_STR ;
 int enum_name_copy (char*,size_t,char const*) ;
 int string_format (char*,char*,char const*,char const*) ;

bool
enum_name_prefixed(char buf[], size_t bufsize, const char *prefix, const char *name)
{
 char prefixed[SIZEOF_STR];

 if (*prefix) {
  if (!string_format(prefixed, "%s-%s", prefix, name))
   return 0;
  name = prefixed;
 }

 return enum_name_copy(buf, bufsize, name);
}
