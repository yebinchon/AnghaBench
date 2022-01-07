
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libzfs_handle_t ;


 int ZFS_SMB_ACL_PURGE ;
 int zfs_smb_acl_mgmt (int *,char*,char*,int ,int *,int *) ;

int
zfs_smb_acl_purge(libzfs_handle_t *hdl, char *dataset, char *path)
{
 return (zfs_smb_acl_mgmt(hdl, dataset, path, ZFS_SMB_ACL_PURGE,
     ((void*)0), ((void*)0)));
}
