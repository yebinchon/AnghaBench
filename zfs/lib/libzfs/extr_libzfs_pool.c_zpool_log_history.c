
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* member_0; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;


 int ZFS_IOC_LOG_HISTORY ;
 int fnvlist_add_string (int *,char*,char const*) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;
 int zcmd_free_nvlists (TYPE_1__*) ;
 int zcmd_write_src_nvlist (int *,TYPE_1__*,int *) ;
 int zfs_ioctl (int *,int ,TYPE_1__*) ;

int
zpool_log_history(libzfs_handle_t *hdl, const char *message)
{
 zfs_cmd_t zc = {"\0"};
 nvlist_t *args;
 int err;

 args = fnvlist_alloc();
 fnvlist_add_string(args, "message", message);
 err = zcmd_write_src_nvlist(hdl, &zc, args);
 if (err == 0)
  err = zfs_ioctl(hdl, ZFS_IOC_LOG_HISTORY, &zc);
 nvlist_free(args);
 zcmd_free_nvlists(&zc);
 return (err);
}
