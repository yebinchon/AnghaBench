
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ z_unmounted; } ;
typedef TYPE_1__ zfsvfs_t ;
struct TYPE_8__ {int os_user_ptr_lock; } ;
typedef TYPE_2__ objset_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ DMU_OST_ZFS ;
 TYPE_1__* dmu_objset_get_user (TYPE_2__*) ;
 scalar_t__ dmu_objset_type (TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

boolean_t
zfs_get_vfs_flag_unmounted(objset_t *os)
{
 zfsvfs_t *zfvp;
 boolean_t unmounted = B_FALSE;

 ASSERT(dmu_objset_type(os) == DMU_OST_ZFS);

 mutex_enter(&os->os_user_ptr_lock);
 zfvp = dmu_objset_get_user(os);
 if (zfvp != ((void*)0) && zfvp->z_unmounted)
  unmounted = B_TRUE;
 mutex_exit(&os->os_user_ptr_lock);

 return (unmounted);
}
