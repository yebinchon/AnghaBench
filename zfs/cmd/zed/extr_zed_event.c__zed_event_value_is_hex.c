
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static int
_zed_event_value_is_hex(const char *name)
{
 const char *hex_suffix[] = {
  "_guid",
  "_guids",
  ((void*)0)
 };
 const char **pp;
 char *p;

 if (!name)
  return (0);

 for (pp = hex_suffix; *pp; pp++) {
  p = strstr(name, *pp);
  if (p && strlen(p) == strlen(*pp))
   return (1);
 }
 return (0);
}
