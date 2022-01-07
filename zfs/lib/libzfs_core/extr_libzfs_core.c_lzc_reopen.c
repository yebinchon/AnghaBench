
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int boolean_t ;


 int ZFS_IOC_POOL_REOPEN ;
 int fnvlist_add_boolean_value (int *,char*,int ) ;
 int * fnvlist_alloc () ;
 int lzc_ioctl (int ,char const*,int *,int *) ;
 int nvlist_free (int *) ;

int
lzc_reopen(const char *pool_name, boolean_t scrub_restart)
{
 nvlist_t *args = fnvlist_alloc();
 int error;

 fnvlist_add_boolean_value(args, "scrub_restart", scrub_restart);

 error = lzc_ioctl(ZFS_IOC_POOL_REOPEN, pool_name, args, ((void*)0));
 nvlist_free(args);
 return (error);
}
