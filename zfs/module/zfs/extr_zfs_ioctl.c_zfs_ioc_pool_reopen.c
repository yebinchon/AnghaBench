
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int spa_scrub_reopen; int spa_root_vdev; int spa_dsl_pool; } ;
typedef TYPE_1__ spa_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int FTAG ;
 int SCL_NONE ;
 scalar_t__ dsl_scan_scrubbing (int ) ;
 int nvlist_lookup_boolean_value (int *,char*,int *) ;
 int spa_close (TYPE_1__*,int ) ;
 int spa_open (char const*,TYPE_1__**,int ) ;
 int spa_vdev_state_enter (TYPE_1__*,int ) ;
 int spa_vdev_state_exit (TYPE_1__*,int *,int ) ;
 int vdev_reopen (int ) ;

__attribute__((used)) static int
zfs_ioc_pool_reopen(const char *pool, nvlist_t *innvl, nvlist_t *outnvl)
{
 spa_t *spa;
 int error;
 boolean_t rc, scrub_restart = B_TRUE;

 if (innvl) {
  error = nvlist_lookup_boolean_value(innvl,
      "scrub_restart", &rc);
  if (error == 0)
   scrub_restart = rc;
 }

 error = spa_open(pool, &spa, FTAG);
 if (error != 0)
  return (error);

 spa_vdev_state_enter(spa, SCL_NONE);
 spa->spa_scrub_reopen = (!scrub_restart &&
     dsl_scan_scrubbing(spa->spa_dsl_pool));
 vdev_reopen(spa->spa_root_vdev);
 spa->spa_scrub_reopen = B_FALSE;

 (void) spa_vdev_state_exit(spa, ((void*)0), 0);
 spa_close(spa, FTAG);
 return (0);
}
