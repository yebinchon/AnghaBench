
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int nfs_only ;
 int share_all_proto ;
 int smb_only ;
 scalar_t__ strcmp (char const*,char*) ;
 int zfs_unshare_proto (int *,char const*,int ) ;

int
zfs_unshareall_bytype(zfs_handle_t *zhp, const char *mountpoint,
    const char *proto)
{
 if (proto == ((void*)0))
  return (zfs_unshare_proto(zhp, mountpoint, share_all_proto));
 if (strcmp(proto, "nfs") == 0)
  return (zfs_unshare_proto(zhp, mountpoint, nfs_only));
 else if (strcmp(proto, "smb") == 0)
  return (zfs_unshare_proto(zhp, mountpoint, smb_only));
 else
  return (1);
}
