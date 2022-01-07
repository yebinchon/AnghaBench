
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZFS_ACL_VERSION_FUID ;
 int ZFS_ACL_VERSION_INITIAL ;
 int ZPL_VERSION_FUID ;

__attribute__((used)) static int
zfs_acl_version(int version)
{
 if (version < ZPL_VERSION_FUID)
  return (ZFS_ACL_VERSION_INITIAL);
 else
  return (ZFS_ACL_VERSION_FUID);
}
