
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* dprintf_string ;
 char* strchr (char*,char) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

int
dprintf_find_string(const char *string)
{
 char *tmp_str = dprintf_string;
 int len = strlen(string);






 while (tmp_str != ((void*)0)) {
  if (strncmp(tmp_str, string, len) == 0 &&
      (tmp_str[len] == ',' || tmp_str[len] == '\0'))
   return (1);
  tmp_str = strchr(tmp_str, ',');
  if (tmp_str != ((void*)0))
   tmp_str++;
 }
 return (0);
}
