
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* z_vfs; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int zfs_prop_t ;
struct TYPE_9__ {scalar_t__ vfs_atime; scalar_t__ vfs_relatime; scalar_t__ vfs_devices; scalar_t__ vfs_exec; scalar_t__ vfs_setuid; scalar_t__ vfs_readonly; scalar_t__ vfs_xattr; scalar_t__ vfs_nbmand; int vfs_do_nbmand; int vfs_do_xattr; int vfs_do_readonly; int vfs_do_setuid; int vfs_do_exec; int vfs_do_devices; int vfs_do_relatime; int vfs_do_atime; } ;
typedef TYPE_2__ vfs_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_10__ {int os_user_ptr_lock; } ;
typedef TYPE_3__ objset_t ;
typedef int dsl_dataset_t ;


 scalar_t__ DMU_OST_ZFS ;
 int EINVAL ;
 int ENOENT ;
 int ESRCH ;
 int dmu_objset_from_ds (int *,TYPE_3__**) ;
 TYPE_1__* dmu_objset_get_user (TYPE_3__*) ;
 scalar_t__ dmu_objset_type (TYPE_3__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int strcpy (char*,char*) ;

int
zfs_get_temporary_prop(dsl_dataset_t *ds, zfs_prop_t zfs_prop, uint64_t *val,
    char *setpoint)
{
 int error;
 zfsvfs_t *zfvp;
 vfs_t *vfsp;
 objset_t *os;
 uint64_t tmp = *val;

 error = dmu_objset_from_ds(ds, &os);
 if (error != 0)
  return (error);

 if (dmu_objset_type(os) != DMU_OST_ZFS)
  return (EINVAL);

 mutex_enter(&os->os_user_ptr_lock);
 zfvp = dmu_objset_get_user(os);
 mutex_exit(&os->os_user_ptr_lock);
 if (zfvp == ((void*)0))
  return (ESRCH);

 vfsp = zfvp->z_vfs;

 switch (zfs_prop) {
 case 135:
  if (vfsp->vfs_do_atime)
   tmp = vfsp->vfs_atime;
  break;
 case 130:
  if (vfsp->vfs_do_relatime)
   tmp = vfsp->vfs_relatime;
  break;
 case 134:
  if (vfsp->vfs_do_devices)
   tmp = vfsp->vfs_devices;
  break;
 case 133:
  if (vfsp->vfs_do_exec)
   tmp = vfsp->vfs_exec;
  break;
 case 129:
  if (vfsp->vfs_do_setuid)
   tmp = vfsp->vfs_setuid;
  break;
 case 131:
  if (vfsp->vfs_do_readonly)
   tmp = vfsp->vfs_readonly;
  break;
 case 128:
  if (vfsp->vfs_do_xattr)
   tmp = vfsp->vfs_xattr;
  break;
 case 132:
  if (vfsp->vfs_do_nbmand)
   tmp = vfsp->vfs_nbmand;
  break;
 default:
  return (ENOENT);
 }

 if (tmp != *val) {
  (void) strcpy(setpoint, "temporary");
  *val = tmp;
 }
 return (0);
}
