
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zfs_smb_acl_op_t ;
struct TYPE_8__ {char* member_0; int zc_string; scalar_t__ zc_cookie; int zc_value; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
struct TYPE_9__ {int libzfs_fd; } ;
typedef TYPE_2__ libzfs_handle_t ;


 int NV_UNIQUE_NAME ;
 int ZFS_IOC_SMB_ACL ;




 int ZFS_SMB_ACL_SRC ;
 int ZFS_SMB_ACL_TARGET ;
 int ioctl (int ,int ,TYPE_1__*) ;
 int no_memory (TYPE_2__*) ;
 int nvlist_add_string (int *,int ,char*) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int strlcpy (int ,char*,int) ;
 int zcmd_write_src_nvlist (TYPE_2__*,TYPE_1__*,int *) ;

__attribute__((used)) static int
zfs_smb_acl_mgmt(libzfs_handle_t *hdl, char *dataset, char *path,
    zfs_smb_acl_op_t cmd, char *resource1, char *resource2)
{
 zfs_cmd_t zc = {"\0"};
 nvlist_t *nvlist = ((void*)0);
 int error;

 (void) strlcpy(zc.zc_name, dataset, sizeof (zc.zc_name));
 (void) strlcpy(zc.zc_value, path, sizeof (zc.zc_value));
 zc.zc_cookie = (uint64_t)cmd;

 if (cmd == 128) {
  if (nvlist_alloc(&nvlist, NV_UNIQUE_NAME, 0) != 0) {
   (void) no_memory(hdl);
   return (0);
  }
 }

 switch (cmd) {
 case 131:
 case 129:
  (void) strlcpy(zc.zc_string, resource1, sizeof (zc.zc_string));
  break;
 case 128:
  if (nvlist_add_string(nvlist, ZFS_SMB_ACL_SRC,
      resource1) != 0) {
    (void) no_memory(hdl);
    return (-1);
  }
  if (nvlist_add_string(nvlist, ZFS_SMB_ACL_TARGET,
      resource2) != 0) {
    (void) no_memory(hdl);
    return (-1);
  }
  if (zcmd_write_src_nvlist(hdl, &zc, nvlist) != 0) {
   nvlist_free(nvlist);
   return (-1);
  }
  break;
 case 130:
  break;
 default:
  return (-1);
 }
 error = ioctl(hdl->libzfs_fd, ZFS_IOC_SMB_ACL, &zc);
 nvlist_free(nvlist);
 return (error);
}
