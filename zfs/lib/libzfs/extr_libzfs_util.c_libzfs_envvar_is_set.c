
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int strncasecmp (char*,char*,int) ;
 int strnlen (char*,int) ;
 scalar_t__ strtoul (char*,int *,int ) ;

int
libzfs_envvar_is_set(char *envvar)
{
 char *env = getenv(envvar);
 if (env && (strtoul(env, ((void*)0), 0) > 0 ||
     (!strncasecmp(env, "YES", 3) && strnlen(env, 4) == 3) ||
     (!strncasecmp(env, "ON", 2) && strnlen(env, 3) == 2)))
  return (1);

 return (0);
}
