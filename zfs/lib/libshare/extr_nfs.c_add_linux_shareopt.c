
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SA_NO_MEMORY ;
 int SA_OK ;
 char* realloc (char*,size_t) ;
 int strcat (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
add_linux_shareopt(char **plinux_opts, const char *key, const char *value)
{
 size_t len = 0;
 char *new_linux_opts;

 if (*plinux_opts != ((void*)0))
  len = strlen(*plinux_opts);

 new_linux_opts = realloc(*plinux_opts, len + 1 + strlen(key) +
     (value ? 1 + strlen(value) : 0) + 1);

 if (new_linux_opts == ((void*)0))
  return (SA_NO_MEMORY);

 new_linux_opts[len] = '\0';

 if (len > 0)
  strcat(new_linux_opts, ",");

 strcat(new_linux_opts, key);

 if (value != ((void*)0)) {
  strcat(new_linux_opts, "=");
  strcat(new_linux_opts, value);
 }

 *plinux_opts = new_linux_opts;

 return (SA_OK);
}
