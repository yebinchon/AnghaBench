
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ pool_initialize_func_t ;
typedef int nvlist_t ;


 int ZFS_IOC_POOL_INITIALIZE ;
 int ZPOOL_INITIALIZE_COMMAND ;
 int ZPOOL_INITIALIZE_VDEVS ;
 int fnvlist_add_nvlist (int *,int ,int *) ;
 int fnvlist_add_uint64 (int *,int ,int ) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int lzc_ioctl (int ,char const*,int *,int **) ;

int
lzc_initialize(const char *poolname, pool_initialize_func_t cmd_type,
    nvlist_t *vdevs, nvlist_t **errlist)
{
 int error;

 nvlist_t *args = fnvlist_alloc();
 fnvlist_add_uint64(args, ZPOOL_INITIALIZE_COMMAND, (uint64_t)cmd_type);
 fnvlist_add_nvlist(args, ZPOOL_INITIALIZE_VDEVS, vdevs);

 error = lzc_ioctl(ZFS_IOC_POOL_INITIALIZE, poolname, args, errlist);

 fnvlist_free(args);

 return (error);
}
