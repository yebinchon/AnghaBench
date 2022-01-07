
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ zlp_txg; } ;
typedef TYPE_2__ zpool_load_policy_t ;
typedef int uint64_t ;
struct TYPE_17__ {int ub_timestamp; } ;
struct TYPE_19__ {scalar_t__ spa_load_max_txg; scalar_t__ spa_bootfs; int spa_errata; int spa_load_info; TYPE_1__ spa_uberblock; int * spa_root_vdev; int spa_config_source; int spa_extreme_rewind; int spa_config; } ;
typedef TYPE_3__ spa_t ;
typedef int nvlist_t ;
typedef int longlong_t ;


 int B_TRUE ;
 int EEXIST ;
 int FREAD ;
 int FTAG ;
 int KM_SLEEP ;
 int MAXPATHLEN ;
 int RW_READER ;
 int SCL_CONFIG ;
 int SPA_CONFIG_SRC_CACHEFILE ;
 int SPA_CONFIG_SRC_SCAN ;
 int SPA_IMPORT_EXISTING ;
 int SPA_LOAD_TRYIMPORT ;
 int TRYIMPORT_NAME ;
 scalar_t__ UINT64_MAX ;
 int VERIFY (int) ;
 int ZPOOL_CONFIG_BOOTFS ;
 int ZPOOL_CONFIG_CACHEFILE ;
 int ZPOOL_CONFIG_ERRATA ;
 int ZPOOL_CONFIG_LOAD_INFO ;
 int ZPOOL_CONFIG_POOL_NAME ;
 int ZPOOL_CONFIG_POOL_STATE ;
 int ZPOOL_CONFIG_TIMESTAMP ;
 scalar_t__ dsl_dsobj_to_dsname (int ,scalar_t__,char*) ;
 char* kmem_alloc (int ,int ) ;
 int kmem_free (char*,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ nvlist_add_nvlist (int *,int ,int ) ;
 scalar_t__ nvlist_add_string (int *,int ,char*) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,int ) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int snprintf (char*,int ,char*,char*,char*) ;
 int spa_activate (TYPE_3__*,int ) ;
 TYPE_3__* spa_add (int ,int *,int *) ;
 int spa_add_l2cache (TYPE_3__*,int *) ;
 int spa_add_spares (TYPE_3__*,int *) ;
 int spa_config_enter (TYPE_3__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_3__*,int ,int ) ;
 int * spa_config_generate (TYPE_3__*,int *,unsigned long long,int ) ;
 int spa_deactivate (TYPE_3__*) ;
 int spa_load (TYPE_3__*,int ,int ) ;
 int spa_name (TYPE_3__*) ;
 int spa_namespace_lock ;
 int spa_remove (TYPE_3__*) ;
 int spa_unload (TYPE_3__*) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int ) ;
 int zfs_dbgmsg (char*,char*,...) ;
 int zpool_get_load_policy (int ,TYPE_2__*) ;

nvlist_t *
spa_tryimport(nvlist_t *tryconfig)
{
 nvlist_t *config = ((void*)0);
 char *poolname, *cachefile;
 spa_t *spa;
 uint64_t state;
 int error;
 zpool_load_policy_t policy;

 if (nvlist_lookup_string(tryconfig, ZPOOL_CONFIG_POOL_NAME, &poolname))
  return (((void*)0));

 if (nvlist_lookup_uint64(tryconfig, ZPOOL_CONFIG_POOL_STATE, &state))
  return (((void*)0));




 mutex_enter(&spa_namespace_lock);
 spa = spa_add(TRYIMPORT_NAME, tryconfig, ((void*)0));
 spa_activate(spa, FREAD);




 zpool_get_load_policy(spa->spa_config, &policy);
 if (policy.zlp_txg != UINT64_MAX) {
  spa->spa_load_max_txg = policy.zlp_txg;
  spa->spa_extreme_rewind = B_TRUE;
  zfs_dbgmsg("spa_tryimport: importing %s, max_txg=%lld",
      poolname, (longlong_t)policy.zlp_txg);
 } else {
  zfs_dbgmsg("spa_tryimport: importing %s", poolname);
 }

 if (nvlist_lookup_string(tryconfig, ZPOOL_CONFIG_CACHEFILE, &cachefile)
     == 0) {
  zfs_dbgmsg("spa_tryimport: using cachefile '%s'", cachefile);
  spa->spa_config_source = SPA_CONFIG_SRC_CACHEFILE;
 } else {
  spa->spa_config_source = SPA_CONFIG_SRC_SCAN;
 }

 error = spa_load(spa, SPA_LOAD_TRYIMPORT, SPA_IMPORT_EXISTING);




 if (spa->spa_root_vdev != ((void*)0)) {
  config = spa_config_generate(spa, ((void*)0), -1ULL, B_TRUE);
  VERIFY(nvlist_add_string(config, ZPOOL_CONFIG_POOL_NAME,
      poolname) == 0);
  VERIFY(nvlist_add_uint64(config, ZPOOL_CONFIG_POOL_STATE,
      state) == 0);
  VERIFY(nvlist_add_uint64(config, ZPOOL_CONFIG_TIMESTAMP,
      spa->spa_uberblock.ub_timestamp) == 0);
  VERIFY(nvlist_add_nvlist(config, ZPOOL_CONFIG_LOAD_INFO,
      spa->spa_load_info) == 0);
  VERIFY(nvlist_add_uint64(config, ZPOOL_CONFIG_ERRATA,
      spa->spa_errata) == 0);






  if ((!error || error == EEXIST) && spa->spa_bootfs) {
   char *tmpname = kmem_alloc(MAXPATHLEN, KM_SLEEP);





   if (dsl_dsobj_to_dsname(spa_name(spa),
       spa->spa_bootfs, tmpname) == 0) {
    char *cp;
    char *dsname;

    dsname = kmem_alloc(MAXPATHLEN, KM_SLEEP);

    cp = strchr(tmpname, '/');
    if (cp == ((void*)0)) {
     (void) strlcpy(dsname, tmpname,
         MAXPATHLEN);
    } else {
     (void) snprintf(dsname, MAXPATHLEN,
         "%s/%s", poolname, ++cp);
    }
    VERIFY(nvlist_add_string(config,
        ZPOOL_CONFIG_BOOTFS, dsname) == 0);
    kmem_free(dsname, MAXPATHLEN);
   }
   kmem_free(tmpname, MAXPATHLEN);
  }




  spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);
  spa_add_spares(spa, config);
  spa_add_l2cache(spa, config);
  spa_config_exit(spa, SCL_CONFIG, FTAG);
 }

 spa_unload(spa);
 spa_deactivate(spa);
 spa_remove(spa);
 mutex_exit(&spa_namespace_lock);

 return (config);
}
