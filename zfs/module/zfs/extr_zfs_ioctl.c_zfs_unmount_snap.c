
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MNT_FORCE ;
 int * strchr (char const*,char) ;
 int zfsctl_snapshot_unmount (char*,int ) ;

void
zfs_unmount_snap(const char *snapname)
{
 if (strchr(snapname, '@') == ((void*)0))
  return;

 (void) zfsctl_snapshot_unmount((char *)snapname, MNT_FORCE);
}
