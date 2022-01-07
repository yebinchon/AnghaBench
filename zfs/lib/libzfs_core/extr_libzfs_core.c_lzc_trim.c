
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ pool_trim_func_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int ZFS_IOC_POOL_TRIM ;
 int ZPOOL_TRIM_COMMAND ;
 int ZPOOL_TRIM_RATE ;
 int ZPOOL_TRIM_SECURE ;
 int ZPOOL_TRIM_VDEVS ;
 int fnvlist_add_boolean_value (int *,int ,int ) ;
 int fnvlist_add_nvlist (int *,int ,int *) ;
 int fnvlist_add_uint64 (int *,int ,int ) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int lzc_ioctl (int ,char const*,int *,int **) ;

int
lzc_trim(const char *poolname, pool_trim_func_t cmd_type, uint64_t rate,
    boolean_t secure, nvlist_t *vdevs, nvlist_t **errlist)
{
 int error;

 nvlist_t *args = fnvlist_alloc();
 fnvlist_add_uint64(args, ZPOOL_TRIM_COMMAND, (uint64_t)cmd_type);
 fnvlist_add_nvlist(args, ZPOOL_TRIM_VDEVS, vdevs);
 fnvlist_add_uint64(args, ZPOOL_TRIM_RATE, rate);
 fnvlist_add_boolean_value(args, ZPOOL_TRIM_SECURE, secure);

 error = lzc_ioctl(ZFS_IOC_POOL_TRIM, poolname, args, errlist);

 fnvlist_free(args);

 return (error);
}
