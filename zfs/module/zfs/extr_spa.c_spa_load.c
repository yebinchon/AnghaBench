
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_8__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_9__ {scalar_t__ spa_ena; int spa_load_state; TYPE_8__ spa_loaded_ts; int spa_refcount; int spa_minref; } ;
typedef TYPE_1__ spa_t ;
typedef int spa_load_state_t ;
typedef int spa_import_type_t ;


 int EBADF ;
 int EEXIST ;
 char* FM_EREPORT_ZFS_POOL ;
 int SPA_LOAD_ERROR ;
 int SPA_LOAD_NONE ;
 int gethrestime (TYPE_8__*) ;
 int spa_evicting_os_wait (TYPE_1__*) ;
 int spa_guid (TYPE_1__*) ;
 int spa_import_progress_set_state (int ,int ) ;
 int spa_load_impl (TYPE_1__*,int ,char**) ;
 int spa_load_state (TYPE_1__*) ;
 int zfs_ereport_post (char*,TYPE_1__*,int *,int *,int *,int ,int ) ;
 int zfs_refcount_count (int *) ;

__attribute__((used)) static int
spa_load(spa_t *spa, spa_load_state_t state, spa_import_type_t type)
{
 char *ereport = FM_EREPORT_ZFS_POOL;
 int error;

 spa->spa_load_state = state;
 (void) spa_import_progress_set_state(spa_guid(spa),
     spa_load_state(spa));

 gethrestime(&spa->spa_loaded_ts);
 error = spa_load_impl(spa, type, &ereport);





 spa_evicting_os_wait(spa);
 spa->spa_minref = zfs_refcount_count(&spa->spa_refcount);
 if (error) {
  if (error != EEXIST) {
   spa->spa_loaded_ts.tv_sec = 0;
   spa->spa_loaded_ts.tv_nsec = 0;
  }
  if (error != EBADF) {
   zfs_ereport_post(ereport, spa, ((void*)0), ((void*)0), ((void*)0), 0, 0);
  }
 }
 spa->spa_load_state = error ? SPA_LOAD_ERROR : SPA_LOAD_NONE;
 spa->spa_ena = 0;

 (void) spa_import_progress_set_state(spa_guid(spa),
     spa_load_state(spa));

 return (error);
}
