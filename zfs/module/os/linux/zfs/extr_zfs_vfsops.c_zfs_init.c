
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMU_OST_ZFS ;
 int dmu_objset_register_type (int ,int ) ;
 int register_filesystem (int *) ;
 int zfs_space_delta_cb ;
 int zfs_znode_init () ;
 int zfsctl_init () ;
 int zpl_fs_type ;

void
zfs_init(void)
{
 zfsctl_init();
 zfs_znode_init();
 dmu_objset_register_type(DMU_OST_ZFS, zfs_space_delta_cb);
 register_filesystem(&zpl_fs_type);
}
