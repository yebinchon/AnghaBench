
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zs_minor; int zs_zevent; int zs_onexit; } ;
typedef TYPE_1__ zfsdev_state_t ;
struct file {TYPE_1__* private_data; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int zfs_onexit_destroy (int ) ;
 int zfs_zevent_destroy (int ) ;
 int zfsdev_state_lock ;

__attribute__((used)) static int
zfsdev_state_destroy(struct file *filp)
{
 zfsdev_state_t *zs;

 ASSERT(MUTEX_HELD(&zfsdev_state_lock));
 ASSERT(filp->private_data != ((void*)0));

 zs = filp->private_data;
 zs->zs_minor = -1;
 zfs_onexit_destroy(zs->zs_onexit);
 zfs_zevent_destroy(zs->zs_zevent);

 return (0);
}
