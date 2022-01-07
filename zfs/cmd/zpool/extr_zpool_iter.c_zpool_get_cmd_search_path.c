
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZPOOL_SCRIPTS_DIR ;
 int asprintf (char**,char*,char const*,...) ;
 char* getenv (char*) ;
 char* strdup (char const*) ;

char *
zpool_get_cmd_search_path(void)
{
 const char *env;
 char *sp = ((void*)0);

 env = getenv("ZPOOL_SCRIPTS_PATH");
 if (env != ((void*)0))
  return (strdup(env));

 env = getenv("HOME");
 if (env != ((void*)0)) {
  if (asprintf(&sp, "%s/.zpool.d:%s",
      env, ZPOOL_SCRIPTS_DIR) != -1) {
   return (sp);
  }
 }

 if (asprintf(&sp, "%s", ZPOOL_SCRIPTS_DIR) != -1)
  return (sp);

 return (((void*)0));
}
