
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;


 int for_each_vdev (int *,int ,void*) ;
 int is_vdev_cb ;

__attribute__((used)) static int
is_vdev(zpool_handle_t *zhp, void *cb_data)
{
 return (for_each_vdev(zhp, is_vdev_cb, cb_data));
}
