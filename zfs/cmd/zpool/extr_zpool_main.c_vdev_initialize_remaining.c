
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vs_initialize_state; scalar_t__ vs_initialize_bytes_done; scalar_t__ vs_initialize_bytes_est; } ;
typedef TYPE_1__ vdev_stat_t ;
typedef size_t uint_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;


 scalar_t__ VDEV_INITIALIZE_ACTIVE ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_VDEV_STATS ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_uint64_array (int *,int ,scalar_t__**,size_t*) ;
 int verify (int) ;

__attribute__((used)) static uint64_t
vdev_initialize_remaining(nvlist_t *nv)
{
 uint64_t bytes_remaining;
 nvlist_t **child;
 uint_t c, children;
 vdev_stat_t *vs;

 verify(nvlist_lookup_uint64_array(nv, ZPOOL_CONFIG_VDEV_STATS,
     (uint64_t **)&vs, &c) == 0);

 if (vs->vs_initialize_state == VDEV_INITIALIZE_ACTIVE)
  bytes_remaining = vs->vs_initialize_bytes_est -
      vs->vs_initialize_bytes_done;
 else
  bytes_remaining = 0;

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_CHILDREN,
     &child, &children) != 0)
  children = 0;

 for (c = 0; c < children; c++)
  bytes_remaining += vdev_initialize_remaining(child[c]);

 return (bytes_remaining);
}
