
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zprop_source_t ;
typedef int zfs_handle_t ;
typedef int mountpoint ;


 int ZFS_MAXPROPLEN ;
 scalar_t__ ZPROP_SRC_DEFAULT ;
 scalar_t__ ZPROP_SRC_INHERITED ;
 int rmdir (char*) ;
 int zfs_is_mountable (int *,char*,int,scalar_t__*,int ) ;

void
remove_mountpoint(zfs_handle_t *zhp)
{
 char mountpoint[ZFS_MAXPROPLEN];
 zprop_source_t source;

 if (!zfs_is_mountable(zhp, mountpoint, sizeof (mountpoint),
     &source, 0))
  return;

 if (source == ZPROP_SRC_DEFAULT ||
     source == ZPROP_SRC_INHERITED) {






  (void) rmdir(mountpoint);
 }
}
