
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfsdev_state_t ;
struct TYPE_3__ {int zs_minor; } ;


 int FREAD ;
 int FWRITE ;
 int KM_SLEEP ;
 int MUTEX_DEFAULT ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int mutex_init (int *,int *,int ,int *) ;
 int * rrw_tsd_destroy ;
 int rrw_tsd_key ;
 int spa_fini () ;
 int spa_init (int) ;
 int tsd_create (int *,int *) ;
 int * zfs_allow_log_destroy ;
 int zfs_allow_log_key ;
 int zfs_fini () ;
 int zfs_fsyncer_key ;
 int zfs_init () ;
 int zfs_ioctl_init () ;
 int zfsdev_attach () ;
 TYPE_1__* zfsdev_state_list ;
 int zfsdev_state_lock ;
 int zvol_fini () ;
 int zvol_init () ;

int
zfs_kmod_init(void)
{
 int error;

 if ((error = zvol_init()) != 0)
  return (error);

 spa_init(FREAD | FWRITE);
 zfs_init();

 zfs_ioctl_init();

 mutex_init(&zfsdev_state_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 zfsdev_state_list = kmem_zalloc(sizeof (zfsdev_state_t), KM_SLEEP);
 zfsdev_state_list->zs_minor = -1;

 if ((error = zfsdev_attach()) != 0)
  goto out;

 tsd_create(&zfs_fsyncer_key, ((void*)0));
 tsd_create(&rrw_tsd_key, rrw_tsd_destroy);
 tsd_create(&zfs_allow_log_key, zfs_allow_log_destroy);

 return (0);
out:
 zfs_fini();
 spa_fini();
 zvol_fini();

 return (error);
}
