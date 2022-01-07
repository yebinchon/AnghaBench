
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zs_minor; struct TYPE_4__* zs_next; int zs_zevent; int zs_onexit; struct file* zs_file; } ;
typedef TYPE_1__ zfsdev_state_t ;
typedef int zfs_zevent_t ;
typedef int zfs_onexit_t ;
struct file {TYPE_1__* private_data; } ;
typedef void* minor_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int ) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int ENXIO ;
 int KM_SLEEP ;
 int MUTEX_HELD (int *) ;
 int SET_ERROR (int ) ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int smp_wmb () ;
 int zfs_onexit_init (int **) ;
 int zfs_zevent_init (int **) ;
 void* zfsdev_minor_alloc () ;
 TYPE_1__* zfsdev_state_list ;
 int zfsdev_state_lock ;

__attribute__((used)) static int
zfsdev_state_init(struct file *filp)
{
 zfsdev_state_t *zs, *zsprev = ((void*)0);
 minor_t minor;
 boolean_t newzs = B_FALSE;

 ASSERT(MUTEX_HELD(&zfsdev_state_lock));

 minor = zfsdev_minor_alloc();
 if (minor == 0)
  return (SET_ERROR(ENXIO));

 for (zs = zfsdev_state_list; zs != ((void*)0); zs = zs->zs_next) {
  if (zs->zs_minor == -1)
   break;
  zsprev = zs;
 }

 if (!zs) {
  zs = kmem_zalloc(sizeof (zfsdev_state_t), KM_SLEEP);
  newzs = B_TRUE;
 }

 zs->zs_file = filp;
 filp->private_data = zs;

 zfs_onexit_init((zfs_onexit_t **)&zs->zs_onexit);
 zfs_zevent_init((zfs_zevent_t **)&zs->zs_zevent);
 if (newzs) {
  zs->zs_minor = minor;
  smp_wmb();
  zsprev->zs_next = zs;
 } else {
  smp_wmb();
  zs->zs_minor = minor;
 }

 return (0);
}
