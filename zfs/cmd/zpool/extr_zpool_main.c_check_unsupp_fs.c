
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int ZFS_PROP_VERSION ;
 int ZPL_VERSION ;
 char* gettext (char*) ;
 int printf (char*,char*,int) ;
 int zfs_close (int *) ;
 char* zfs_get_name (int *) ;
 int zfs_iter_filesystems (int *,int (*) (int *,void*),void*) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;

__attribute__((used)) static int
check_unsupp_fs(zfs_handle_t *zhp, void *unsupp_fs)
{
 int zfs_version = (int)zfs_prop_get_int(zhp, ZFS_PROP_VERSION);
 int *count = (int *)unsupp_fs;

 if (zfs_version > ZPL_VERSION) {
  (void) printf(gettext("%s (v%d) is not supported by this "
      "implementation of ZFS.\n"),
      zfs_get_name(zhp), zfs_version);
  (*count)++;
 }

 zfs_iter_filesystems(zhp, check_unsupp_fs, unsupp_fs);

 zfs_close(zhp);

 return (0);
}
