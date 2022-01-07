
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zoneid_t ;
typedef int (* zfs_iter_f ) (int *,void*) ;
typedef int zfs_handle_t ;
typedef int tpool_t ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;


 scalar_t__ GLOBAL_ZONEID ;
 int ZFS_PROP_ZONED ;
 int * getenv (char*) ;
 scalar_t__ getzoneid () ;
 int mount_tp_nthr ;
 int mountpoint_cmp ;
 int non_descendant_idx (int **,size_t,int) ;
 int qsort (int **,size_t,int,int ) ;
 int * tpool_create (int,int ,int ,int *) ;
 int tpool_destroy (int *) ;
 int tpool_wait (int *) ;
 int zfs_dispatch_mount (int *,int **,size_t,int,int (*) (int *,void*),void*,int *) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;

void
zfs_foreach_mountpoint(libzfs_handle_t *hdl, zfs_handle_t **handles,
    size_t num_handles, zfs_iter_f func, void *data, boolean_t parallel)
{
 zoneid_t zoneid = getzoneid();






 boolean_t serial_mount = !parallel ||
     (getenv("ZFS_SERIAL_MOUNT") != ((void*)0));





 qsort(handles, num_handles, sizeof (zfs_handle_t *), mountpoint_cmp);

 if (serial_mount) {
  for (int i = 0; i < num_handles; i++) {
   func(handles[i], data);
  }
  return;
 }





 tpool_t *tp = tpool_create(1, mount_tp_nthr, 0, ((void*)0));






 for (int i = 0; i < num_handles;
     i = non_descendant_idx(handles, num_handles, i)) {





  if (zoneid == GLOBAL_ZONEID &&
      zfs_prop_get_int(handles[i], ZFS_PROP_ZONED))
   break;
  zfs_dispatch_mount(hdl, handles, num_handles, i, func, data,
      tp);
 }

 tpool_wait(tp);
 tpool_destroy(tp);
}
