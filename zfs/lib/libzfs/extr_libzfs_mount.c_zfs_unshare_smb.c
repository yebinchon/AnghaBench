
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int smb_only ;
 int zfs_unshare_proto (int *,char const*,int ) ;

int
zfs_unshare_smb(zfs_handle_t *zhp, const char *mountpoint)
{
 return (zfs_unshare_proto(zhp, mountpoint, smb_only));
}
