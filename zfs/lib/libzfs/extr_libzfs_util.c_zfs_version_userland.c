
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZFS_META_ALIAS ;
 int strlcpy (char*,int ,int) ;

void
zfs_version_userland(char *version, int len)
{
 (void) strlcpy(version, ZFS_META_ALIAS, len);
}
