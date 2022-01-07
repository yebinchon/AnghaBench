
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* zs_next; } ;
typedef TYPE_1__ zfsdev_state_t ;


 int kmem_free (TYPE_1__*,int) ;
 int mutex_destroy (int *) ;
 int rrw_tsd_key ;
 int spa_fini () ;
 int tsd_destroy (int *) ;
 int zfs_allow_log_key ;
 int zfs_fini () ;
 int zfs_fsyncer_key ;
 int zfsdev_detach () ;
 TYPE_1__* zfsdev_state_list ;
 int zfsdev_state_lock ;
 int zvol_fini () ;

void
zfs_kmod_fini(void)
{
 zfsdev_state_t *zs, *zsprev = ((void*)0);

 zfsdev_detach();

 mutex_destroy(&zfsdev_state_lock);

 for (zs = zfsdev_state_list; zs != ((void*)0); zs = zs->zs_next) {
  if (zsprev)
   kmem_free(zsprev, sizeof (zfsdev_state_t));
  zsprev = zs;
 }
 if (zsprev)
  kmem_free(zsprev, sizeof (zfsdev_state_t));

 zfs_fini();
 spa_fini();
 zvol_fini();

 tsd_destroy(&zfs_fsyncer_key);
 tsd_destroy(&rrw_tsd_key);
 tsd_destroy(&zfs_allow_log_key);
}
