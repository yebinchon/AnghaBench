
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int smb_only ;
 int zfs_share_proto (int *,int ) ;

int
zfs_share_smb(zfs_handle_t *zhp)
{
 return (zfs_share_proto(zhp, smb_only));
}
