
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;


 int for_each_vdev (int *,int ,void*) ;
 int for_each_vdev_run_cb ;

__attribute__((used)) static int
all_pools_for_each_vdev_gather_cb(zpool_handle_t *zhp, void *cb_vcdl)
{
 return (for_each_vdev(zhp, for_each_vdev_run_cb, cb_vcdl));
}
