
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef int nvlist_t ;


 int EINVAL ;
 int ENOTSUP ;
 int FTAG ;
 int SET_ERROR (int ) ;
 scalar_t__ SPA_VERSION_ZPOOL_HISTORY ;
 char* fnvlist_lookup_string (int *,char*) ;
 int kmem_strfree (char*) ;
 int spa_close (int *,int ) ;
 int spa_history_log (int *,char*) ;
 int spa_open (char*,int **,int ) ;
 scalar_t__ spa_version (int *) ;
 char* tsd_get (int ) ;
 int tsd_set (int ,int *) ;
 int zfs_allow_log_key ;

__attribute__((used)) static int
zfs_ioc_log_history(const char *unused, nvlist_t *innvl, nvlist_t *outnvl)
{
 char *message;
 spa_t *spa;
 int error;
 char *poolname;
 poolname = tsd_get(zfs_allow_log_key);
 if (poolname == ((void*)0))
  return (SET_ERROR(EINVAL));
 (void) tsd_set(zfs_allow_log_key, ((void*)0));
 error = spa_open(poolname, &spa, FTAG);
 kmem_strfree(poolname);
 if (error != 0)
  return (error);

 message = fnvlist_lookup_string(innvl, "message");

 if (spa_version(spa) < SPA_VERSION_ZPOOL_HISTORY) {
  spa_close(spa, FTAG);
  return (SET_ERROR(ENOTSUP));
 }

 error = spa_history_log(spa, message);
 spa_close(spa, FTAG);
 return (error);
}
