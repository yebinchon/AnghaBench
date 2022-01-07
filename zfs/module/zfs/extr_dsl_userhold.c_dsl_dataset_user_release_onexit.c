
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zhca_spa_load_guid; int zhca_holds; int zhca_spaname; } ;
typedef TYPE_1__ zfs_hold_cleanup_arg_t ;
typedef int spa_t ;


 int FTAG ;
 int dsl_dataset_user_release_tmp (int ,int ) ;
 int fnvlist_free (int ) ;
 int kmem_free (TYPE_1__*,int) ;
 int spa_close (int *,int ) ;
 int spa_get_dsl (int *) ;
 scalar_t__ spa_load_guid (int *) ;
 int spa_open (int ,int **,int ) ;
 int zfs_dbgmsg (char*,int ) ;

__attribute__((used)) static void
dsl_dataset_user_release_onexit(void *arg)
{
 zfs_hold_cleanup_arg_t *ca = arg;
 spa_t *spa;
 int error;

 error = spa_open(ca->zhca_spaname, &spa, FTAG);
 if (error != 0) {
  zfs_dbgmsg("couldn't release holds on pool=%s "
      "because pool is no longer loaded",
      ca->zhca_spaname);
  return;
 }
 if (spa_load_guid(spa) != ca->zhca_spa_load_guid) {
  zfs_dbgmsg("couldn't release holds on pool=%s "
      "because pool is no longer loaded (guid doesn't match)",
      ca->zhca_spaname);
  spa_close(spa, FTAG);
  return;
 }

 (void) dsl_dataset_user_release_tmp(spa_get_dsl(spa), ca->zhca_holds);
 fnvlist_free(ca->zhca_holds);
 kmem_free(ca, sizeof (zfs_hold_cleanup_arg_t));
 spa_close(spa, FTAG);
}
