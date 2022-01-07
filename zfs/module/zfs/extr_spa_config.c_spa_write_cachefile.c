
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int spa_import_flags; scalar_t__ spa_ccw_fail_time; int spa_config_list; int spa_props_lock; int * spa_config; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_18__ {int * scd_path; } ;
typedef TYPE_2__ spa_config_dirent_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int ) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int ESC_ZFS_CONFIG_SYNC ;
 int FM_EREPORT_ZFS_CONFIG_CACHE_WRITE ;
 int FWRITE ;
 int MUTEX_HELD (int *) ;
 int SPA_ASYNC_CONFIG_UPDATE ;
 int ZFS_IMPORT_TEMP_NAME ;
 int ZPOOL_CONFIG_POOL_NAME ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int * fnvlist_alloc () ;
 char* fnvlist_lookup_string (int *,int ) ;
 scalar_t__ gethrtime () ;
 int kmem_free (TYPE_2__*,int) ;
 TYPE_2__* list_head (int *) ;
 TYPE_2__* list_next (int *,TYPE_2__*) ;
 int list_remove (int *,TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int nvlist_free (int *) ;
 int * rootdir ;
 int spa_async_request (TYPE_1__*,int ) ;
 int spa_config_generation ;
 int spa_config_write (TYPE_2__*,int *) ;
 int spa_event_notify (TYPE_1__*,int *,int *,int ) ;
 int spa_mode_global ;
 char* spa_name (TYPE_1__*) ;
 int spa_namespace_lock ;
 TYPE_1__* spa_next (TYPE_1__*) ;
 int spa_strfree (int *) ;
 int spa_writeable (TYPE_1__*) ;
 scalar_t__ strcmp (int *,int *) ;
 int zfs_ereport_post (int ,TYPE_1__*,int *,int *,int *,int ,int ) ;

void
spa_write_cachefile(spa_t *target, boolean_t removing, boolean_t postsysevent)
{
 spa_config_dirent_t *dp, *tdp;
 nvlist_t *nvl;
 char *pool_name;
 boolean_t ccw_failure;
 int error = 0;

 ASSERT(MUTEX_HELD(&spa_namespace_lock));

 if (rootdir == ((void*)0) || !(spa_mode_global & FWRITE))
  return;






 ccw_failure = B_FALSE;
 for (dp = list_head(&target->spa_config_list); dp != ((void*)0);
     dp = list_next(&target->spa_config_list, dp)) {
  spa_t *spa = ((void*)0);
  if (dp->scd_path == ((void*)0))
   continue;




  nvl = ((void*)0);
  while ((spa = spa_next(spa)) != ((void*)0)) {







   if ((spa == target && removing) ||
       !spa_writeable(spa))
    continue;

   mutex_enter(&spa->spa_props_lock);
   tdp = list_head(&spa->spa_config_list);
   if (spa->spa_config == ((void*)0) ||
       tdp == ((void*)0) ||
       tdp->scd_path == ((void*)0) ||
       strcmp(tdp->scd_path, dp->scd_path) != 0) {
    mutex_exit(&spa->spa_props_lock);
    continue;
   }

   if (nvl == ((void*)0))
    nvl = fnvlist_alloc();

   if (spa->spa_import_flags & ZFS_IMPORT_TEMP_NAME)
    pool_name = fnvlist_lookup_string(
        spa->spa_config, ZPOOL_CONFIG_POOL_NAME);
   else
    pool_name = spa_name(spa);

   fnvlist_add_nvlist(nvl, pool_name, spa->spa_config);
   mutex_exit(&spa->spa_props_lock);
  }

  error = spa_config_write(dp, nvl);
  if (error != 0)
   ccw_failure = B_TRUE;
  nvlist_free(nvl);
 }

 if (ccw_failure) {





  if (target->spa_ccw_fail_time == 0) {
   zfs_ereport_post(FM_EREPORT_ZFS_CONFIG_CACHE_WRITE,
       target, ((void*)0), ((void*)0), ((void*)0), 0, 0);
  }
  target->spa_ccw_fail_time = gethrtime();
  spa_async_request(target, SPA_ASYNC_CONFIG_UPDATE);
 } else {




  target->spa_ccw_fail_time = 0;
 }




 dp = list_head(&target->spa_config_list);
 while ((tdp = list_next(&target->spa_config_list, dp)) != ((void*)0)) {
  list_remove(&target->spa_config_list, tdp);
  if (tdp->scd_path != ((void*)0))
   spa_strfree(tdp->scd_path);
  kmem_free(tdp, sizeof (spa_config_dirent_t));
 }

 spa_config_generation++;

 if (postsysevent)
  spa_event_notify(target, ((void*)0), ((void*)0), ESC_ZFS_CONFIG_SYNC);
}
