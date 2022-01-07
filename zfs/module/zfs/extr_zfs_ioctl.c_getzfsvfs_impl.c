
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zfsvfs_t ;
struct TYPE_5__ {int os_user_ptr_lock; } ;
typedef TYPE_1__ objset_t ;


 scalar_t__ DMU_OST_ZFS ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 int * dmu_objset_get_user (TYPE_1__*) ;
 scalar_t__ dmu_objset_type (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_vfs_ref (int **) ;

int
getzfsvfs_impl(objset_t *os, zfsvfs_t **zfvp)
{
 int error = 0;
 if (dmu_objset_type(os) != DMU_OST_ZFS) {
  return (SET_ERROR(EINVAL));
 }

 mutex_enter(&os->os_user_ptr_lock);
 *zfvp = dmu_objset_get_user(os);

 error = zfs_vfs_ref(zfvp);
 mutex_exit(&os->os_user_ptr_lock);
 return (error);
}
