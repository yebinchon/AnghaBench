
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_22__ {void* vfs_nbmand; scalar_t__ vfs_do_nbmand; void* vfs_relatime; scalar_t__ vfs_do_relatime; void* vfs_atime; scalar_t__ vfs_do_atime; void* vfs_xattr; scalar_t__ vfs_do_xattr; void* vfs_devices; scalar_t__ vfs_do_devices; void* vfs_exec; scalar_t__ vfs_do_exec; void* vfs_setuid; scalar_t__ vfs_do_setuid; void* vfs_readonly; void* vfs_do_readonly; int * z_os; struct TYPE_22__* vfs_data; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef TYPE_1__ vfs_t ;
struct dsl_dataset {int dummy; } ;
typedef int objset_t ;


 int ASSERT (TYPE_1__*) ;
 void* B_TRUE ;
 int FTAG ;
 int ZFS_PROP_ACLINHERIT ;
 int ZFS_PROP_ACLTYPE ;
 int ZFS_PROP_ATIME ;
 int ZFS_PROP_DEVICES ;
 int ZFS_PROP_EXEC ;
 int ZFS_PROP_NBMAND ;
 int ZFS_PROP_READONLY ;
 int ZFS_PROP_RECORDSIZE ;
 int ZFS_PROP_RELATIME ;
 int ZFS_PROP_SETUID ;
 int ZFS_PROP_SNAPDIR ;
 int ZFS_PROP_VSCAN ;
 int ZFS_PROP_XATTR ;
 int acl_inherit_changed_cb (TYPE_1__*,void*) ;
 int acltype_changed_cb (TYPE_1__*,void*) ;
 int atime_changed_cb (TYPE_1__*,void*) ;
 int blksz_changed_cb (TYPE_1__*,void*) ;
 int devices_changed_cb (TYPE_1__*,void*) ;
 struct dsl_dataset* dmu_objset_ds (int *) ;
 int dmu_objset_pool (int *) ;
 int dmu_objset_spa (int *) ;
 int dsl_pool_config_enter (int ,int ) ;
 int dsl_pool_config_exit (int ,int ) ;
 int dsl_prop_register (struct dsl_dataset*,int ,int (*) (TYPE_1__*,void*),TYPE_1__*) ;
 int dsl_prop_unregister_all (struct dsl_dataset*,TYPE_1__*) ;
 int exec_changed_cb (TYPE_1__*,void*) ;
 int nbmand_changed_cb (TYPE_1__*,void*) ;
 int readonly_changed_cb (TYPE_1__*,void*) ;
 int relatime_changed_cb (TYPE_1__*,void*) ;
 int setuid_changed_cb (TYPE_1__*,void*) ;
 int snapdir_changed_cb (TYPE_1__*,void*) ;
 int spa_writeable (int ) ;
 int vscan_changed_cb (TYPE_1__*,void*) ;
 int xattr_changed_cb (TYPE_1__*,void*) ;
 scalar_t__ zfs_is_readonly (TYPE_1__*) ;
 int zfs_prop_to_name (int ) ;

__attribute__((used)) static int
zfs_register_callbacks(vfs_t *vfsp)
{
 struct dsl_dataset *ds = ((void*)0);
 objset_t *os = ((void*)0);
 zfsvfs_t *zfsvfs = ((void*)0);
 int error = 0;

 ASSERT(vfsp);
 zfsvfs = vfsp->vfs_data;
 ASSERT(zfsvfs);
 os = zfsvfs->z_os;







 if (zfs_is_readonly(zfsvfs) || !spa_writeable(dmu_objset_spa(os))) {
  vfsp->vfs_do_readonly = B_TRUE;
  vfsp->vfs_readonly = B_TRUE;
 }
 ds = dmu_objset_ds(os);
 dsl_pool_config_enter(dmu_objset_pool(os), FTAG);
 error = dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_ATIME), atime_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_RELATIME), relatime_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_XATTR), xattr_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_RECORDSIZE), blksz_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_READONLY), readonly_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_DEVICES), devices_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_SETUID), setuid_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_EXEC), exec_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_SNAPDIR), snapdir_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_ACLTYPE), acltype_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_ACLINHERIT), acl_inherit_changed_cb,
     zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_VSCAN), vscan_changed_cb, zfsvfs);
 error = error ? error : dsl_prop_register(ds,
     zfs_prop_to_name(ZFS_PROP_NBMAND), nbmand_changed_cb, zfsvfs);
 dsl_pool_config_exit(dmu_objset_pool(os), FTAG);
 if (error)
  goto unregister;




 if (vfsp->vfs_do_readonly)
  readonly_changed_cb(zfsvfs, vfsp->vfs_readonly);
 if (vfsp->vfs_do_setuid)
  setuid_changed_cb(zfsvfs, vfsp->vfs_setuid);
 if (vfsp->vfs_do_exec)
  exec_changed_cb(zfsvfs, vfsp->vfs_exec);
 if (vfsp->vfs_do_devices)
  devices_changed_cb(zfsvfs, vfsp->vfs_devices);
 if (vfsp->vfs_do_xattr)
  xattr_changed_cb(zfsvfs, vfsp->vfs_xattr);
 if (vfsp->vfs_do_atime)
  atime_changed_cb(zfsvfs, vfsp->vfs_atime);
 if (vfsp->vfs_do_relatime)
  relatime_changed_cb(zfsvfs, vfsp->vfs_relatime);
 if (vfsp->vfs_do_nbmand)
  nbmand_changed_cb(zfsvfs, vfsp->vfs_nbmand);

 return (0);

unregister:
 dsl_prop_unregister_all(ds, zfsvfs);
 return (error);
}
