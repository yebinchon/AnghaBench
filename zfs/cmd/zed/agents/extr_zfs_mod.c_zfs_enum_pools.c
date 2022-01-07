
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_TRUE ;
 int g_enumeration_done ;
 int g_pool_list ;
 int g_zfshdl ;
 int zfs_unavail_pool ;
 int zpool_iter (int ,int ,void*) ;

__attribute__((used)) static void *
zfs_enum_pools(void *arg)
{
 (void) zpool_iter(g_zfshdl, zfs_unavail_pool, (void *)&g_pool_list);





 g_enumeration_done = B_TRUE;
 return (((void*)0));
}
