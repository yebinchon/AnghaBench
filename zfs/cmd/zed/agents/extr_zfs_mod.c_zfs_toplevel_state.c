
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_2__ {int vs_state; } ;
typedef TYPE_1__ vdev_stat_t ;
typedef int uint64_t ;
typedef int nvlist_t ;


 int ZPOOL_CONFIG_VDEV_STATS ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ nvlist_lookup_nvlist (int ,int ,int **) ;
 scalar_t__ nvlist_lookup_uint64_array (int *,int ,int **,unsigned int*) ;
 int verify (int) ;
 int zpool_get_config (int *,int *) ;

__attribute__((used)) static int
zfs_toplevel_state(zpool_handle_t *zhp)
{
 nvlist_t *nvroot;
 vdev_stat_t *vs;
 unsigned int c;

 verify(nvlist_lookup_nvlist(zpool_get_config(zhp, ((void*)0)),
     ZPOOL_CONFIG_VDEV_TREE, &nvroot) == 0);
 verify(nvlist_lookup_uint64_array(nvroot, ZPOOL_CONFIG_VDEV_STATS,
     (uint64_t **)&vs, &c) == 0);
 return (vs->vs_state);
}
