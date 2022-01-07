
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int pool_initialize_func_t ;
typedef int nvlist_t ;


 int B_TRUE ;
 int zpool_initialize_impl (int *,int ,int *,int ) ;

int
zpool_initialize_wait(zpool_handle_t *zhp, pool_initialize_func_t cmd_type,
    nvlist_t *vds)
{
 return (zpool_initialize_impl(zhp, cmd_type, vds, B_TRUE));
}
