
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_type_t ;
typedef int zfs_handle_t ;
typedef int libzfs_handle_t ;


 int B_FALSE ;
 scalar_t__ ZFS_CANMOUNT_ON ;
 int ZFS_PROP_CANMOUNT ;
 scalar_t__ ZFS_TYPE_VOLUME ;
 int fprintf (int ,char*) ;
 scalar_t__ geteuid () ;
 char* gettext (char*) ;
 int stderr ;
 int zfs_close (int *) ;
 scalar_t__ zfs_get_type (int *) ;
 scalar_t__ zfs_mount (int *,int *,int ) ;
 int * zfs_open (int *,char const*,int ) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;
 scalar_t__ zfs_prop_valid_for_type (int ,int ,int ) ;
 scalar_t__ zfs_share (int *) ;

__attribute__((used)) static int
zfs_mount_and_share(libzfs_handle_t *hdl, const char *dataset, zfs_type_t type)
{
 zfs_handle_t *zhp = ((void*)0);
 int ret = 0;

 zhp = zfs_open(hdl, dataset, type);
 if (zhp == ((void*)0))
  return (1);





 if (zfs_get_type(zhp) == ZFS_TYPE_VOLUME) {
  zfs_close(zhp);
  return (0);
 }
 if (zfs_prop_valid_for_type(ZFS_PROP_CANMOUNT, type, B_FALSE) &&
     zfs_prop_get_int(zhp, ZFS_PROP_CANMOUNT) == ZFS_CANMOUNT_ON) {
  if (geteuid() != 0) {
   (void) fprintf(stderr, gettext("filesystem "
       "successfully created, but it may only be "
       "mounted by root\n"));
   ret = 1;
  } else if (zfs_mount(zhp, ((void*)0), 0) != 0) {
   (void) fprintf(stderr, gettext("filesystem "
       "successfully created, but not mounted\n"));
   ret = 1;
  } else if (zfs_share(zhp) != 0) {
   (void) fprintf(stderr, gettext("filesystem "
       "successfully created, but not shared\n"));
   ret = 1;
  }
 }

 zfs_close(zhp);

 return (ret);
}
