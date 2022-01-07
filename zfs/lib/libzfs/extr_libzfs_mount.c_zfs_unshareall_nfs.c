
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int nfs_only ;
 int zfs_unshareall_proto (int *,int ) ;

int
zfs_unshareall_nfs(zfs_handle_t *zhp)
{
 return (zfs_unshareall_proto(zhp, nfs_only));
}
