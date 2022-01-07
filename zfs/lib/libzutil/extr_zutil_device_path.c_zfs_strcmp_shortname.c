
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int MAXPATHLEN ;
 int free (char*) ;
 char* getenv (char*) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 scalar_t__ strcmp (char*,char const*) ;
 char* strdup (char*) ;
 int strlen (char const*) ;
 char* strtok (char*,char*) ;
 int zfs_append_partition (char*,int) ;
 char** zpool_default_search_paths (size_t*) ;

__attribute__((used)) static int
zfs_strcmp_shortname(const char *name, const char *cmp_name, int wholedisk)
{
 int path_len, cmp_len, i = 0, error = ENOENT;
 char *dir, *env, *envdup = ((void*)0);
 char path_name[MAXPATHLEN];
 const char * const *zpool_default_import_path;
 size_t count;

 zpool_default_import_path = zpool_default_search_paths(&count);

 cmp_len = strlen(cmp_name);
 env = getenv("ZPOOL_IMPORT_PATH");

 if (env) {
  envdup = strdup(env);
  dir = strtok(envdup, ":");
 } else {
  dir = (char *)zpool_default_import_path[i];
 }

 while (dir) {

  if (env) {
   while (dir[strlen(dir)-1] == '/')
    dir[strlen(dir)-1] = '\0';
  }

  path_len = snprintf(path_name, MAXPATHLEN, "%s/%s", dir, name);
  if (wholedisk)
   path_len = zfs_append_partition(path_name, MAXPATHLEN);

  if ((path_len == cmp_len) && strcmp(path_name, cmp_name) == 0) {
   error = 0;
   break;
  }

  if (env) {
   dir = strtok(((void*)0), ":");
  } else if (++i < count) {
   dir = (char *)zpool_default_import_path[i];
  } else {
   dir = ((void*)0);
  }
 }

 if (env)
  free(envdup);

 return (error);
}
