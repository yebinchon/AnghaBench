
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_5__ {scalar_t__ cb_recurse; scalar_t__ cb_verbose; int cb_snapspec; } ;
typedef TYPE_1__ destroy_cbdata_t ;


 int ENOENT ;
 int destroy_print_snapshots (int *,TYPE_1__*) ;
 int snapshot_to_nvl_cb ;
 int zfs_close (int *) ;
 int zfs_iter_filesystems (int *,int (*) (int *,void*),TYPE_1__*) ;
 int zfs_iter_snapspec (int *,int ,int ,TYPE_1__*) ;

__attribute__((used)) static int
gather_snapshots(zfs_handle_t *zhp, void *arg)
{
 destroy_cbdata_t *cb = arg;
 int err = 0;

 err = zfs_iter_snapspec(zhp, cb->cb_snapspec, snapshot_to_nvl_cb, cb);
 if (err == ENOENT)
  err = 0;
 if (err != 0)
  goto out;

 if (cb->cb_verbose) {
  err = destroy_print_snapshots(zhp, cb);
  if (err != 0)
   goto out;
 }

 if (cb->cb_recurse)
  err = zfs_iter_filesystems(zhp, gather_snapshots, cb);

out:
 zfs_close(zhp);
 return (err);
}
