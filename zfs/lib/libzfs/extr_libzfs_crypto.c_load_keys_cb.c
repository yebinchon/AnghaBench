
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_handle_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int cb_numfailed; int cb_numattempted; } ;
typedef TYPE_1__ loadkey_cbdata_t ;
typedef int boolean_t ;


 int B_FALSE ;
 scalar_t__ ZFS_KEYSTATUS_AVAILABLE ;
 int ZFS_PROP_KEYSTATUS ;
 int zfs_close (int *) ;
 int zfs_crypto_get_encryption_root (int *,int *,int *) ;
 int zfs_crypto_load_key (int *,int ,int *) ;
 int zfs_iter_filesystems (int *,int (*) (int *,void*),TYPE_1__*) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;

__attribute__((used)) static int
load_keys_cb(zfs_handle_t *zhp, void *arg)
{
 int ret;
 boolean_t is_encroot;
 loadkey_cbdata_t *cb = arg;
 uint64_t keystatus = zfs_prop_get_int(zhp, ZFS_PROP_KEYSTATUS);


 ret = zfs_crypto_get_encryption_root(zhp, &is_encroot, ((void*)0));
 if (ret != 0 || !is_encroot)
  goto out;


 if (keystatus == ZFS_KEYSTATUS_AVAILABLE)
  goto out;


 cb->cb_numattempted++;

 ret = zfs_crypto_load_key(zhp, B_FALSE, ((void*)0));
 if (ret)
  cb->cb_numfailed++;

out:
 (void) zfs_iter_filesystems(zhp, load_keys_cb, cb);
 zfs_close(zhp);


 return (0);
}
