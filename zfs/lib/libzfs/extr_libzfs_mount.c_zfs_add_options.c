
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int MNTOPT_ATIME ;
 int MNTOPT_DEVICES ;
 int MNTOPT_EXEC ;
 int MNTOPT_NBMAND ;
 int MNTOPT_NOATIME ;
 int MNTOPT_NODEVICES ;
 int MNTOPT_NOEXEC ;
 int MNTOPT_NONBMAND ;
 int MNTOPT_NOSETUID ;
 int MNTOPT_RELATIME ;
 int MNTOPT_RO ;
 int MNTOPT_RW ;
 int MNTOPT_SETUID ;
 int MNTOPT_STRICTATIME ;
 int ZFS_PROP_ATIME ;
 int ZFS_PROP_DEVICES ;
 int ZFS_PROP_EXEC ;
 int ZFS_PROP_NBMAND ;
 int ZFS_PROP_READONLY ;
 int ZFS_PROP_RELATIME ;
 int ZFS_PROP_SETUID ;
 int * strstr (char*,int ) ;
 int zfs_add_option (int *,char*,int,int ,int ,int ) ;

__attribute__((used)) static int
zfs_add_options(zfs_handle_t *zhp, char *options, int len)
{
 int error = 0;

 error = zfs_add_option(zhp, options, len,
     ZFS_PROP_ATIME, MNTOPT_ATIME, MNTOPT_NOATIME);




 if (strstr(options, MNTOPT_NOATIME) == ((void*)0)) {
  error = zfs_add_option(zhp, options, len,
      ZFS_PROP_RELATIME, MNTOPT_RELATIME, MNTOPT_STRICTATIME);
 }
 error = error ? error : zfs_add_option(zhp, options, len,
     ZFS_PROP_DEVICES, MNTOPT_DEVICES, MNTOPT_NODEVICES);
 error = error ? error : zfs_add_option(zhp, options, len,
     ZFS_PROP_EXEC, MNTOPT_EXEC, MNTOPT_NOEXEC);
 error = error ? error : zfs_add_option(zhp, options, len,
     ZFS_PROP_READONLY, MNTOPT_RO, MNTOPT_RW);
 error = error ? error : zfs_add_option(zhp, options, len,
     ZFS_PROP_SETUID, MNTOPT_SETUID, MNTOPT_NOSETUID);
 error = error ? error : zfs_add_option(zhp, options, len,
     ZFS_PROP_NBMAND, MNTOPT_NBMAND, MNTOPT_NONBMAND);

 return (error);
}
