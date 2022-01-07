
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 char* BOGUS_SUFFIX ;
 int ZFS_IMPORT_CHECKPOINT ;
 int ZFS_IMPORT_MISSING_LOG ;
 int ZFS_IMPORT_SKIP_MMP ;
 int ZPOOL_CONFIG_POOL_NAME ;
 int asprintf (char**,char*,char*,char*) ;
 int fatal (char*,char*,int) ;
 int fnvlist_add_string (int *,int ,char*) ;
 int free (char*) ;
 int spa_get_stats (char*,int **,int *,int ) ;
 int spa_import (char*,int *,int *,int) ;
 char* strchr (char*,char) ;
 char* strndup (char*,size_t) ;
 int zdb_set_skip_mmp (char*) ;

__attribute__((used)) static char *
import_checkpointed_state(char *target, nvlist_t *cfg, char **new_path)
{
 int error = 0;
 char *poolname, *bogus_name = ((void*)0);


 char *path_start = strchr(target, '/');
 if (path_start != ((void*)0)) {
  size_t poolname_len = path_start - target;
  poolname = strndup(target, poolname_len);
 } else {
  poolname = target;
 }

 if (cfg == ((void*)0)) {
  zdb_set_skip_mmp(poolname);
  error = spa_get_stats(poolname, &cfg, ((void*)0), 0);
  if (error != 0) {
   fatal("Tried to read config of pool \"%s\" but "
       "spa_get_stats() failed with error %d\n",
       poolname, error);
  }
 }

 if (asprintf(&bogus_name, "%s%s", poolname, BOGUS_SUFFIX) == -1)
  return (((void*)0));
 fnvlist_add_string(cfg, ZPOOL_CONFIG_POOL_NAME, bogus_name);

 error = spa_import(bogus_name, cfg, ((void*)0),
     ZFS_IMPORT_MISSING_LOG | ZFS_IMPORT_CHECKPOINT |
     ZFS_IMPORT_SKIP_MMP);
 if (error != 0) {
  fatal("Tried to import pool \"%s\" but spa_import() failed "
      "with error %d\n", bogus_name, error);
 }

 if (new_path != ((void*)0) && path_start != ((void*)0)) {
  if (asprintf(new_path, "%s%s", bogus_name, path_start) == -1) {
   if (path_start != ((void*)0))
    free(poolname);
   return (((void*)0));
  }
 }

 if (target != poolname)
  free(poolname);

 return (bogus_name);
}
