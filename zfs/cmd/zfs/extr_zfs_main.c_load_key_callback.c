
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_handle_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int cb_numfailed; int cb_keylocation; int cb_noop; scalar_t__ cb_loadkey; int cb_numattempted; scalar_t__ cb_recursive; } ;
typedef TYPE_1__ loadkey_cbdata_t ;
typedef int boolean_t ;


 scalar_t__ ZFS_KEYSTATUS_AVAILABLE ;
 scalar_t__ ZFS_KEYSTATUS_UNAVAILABLE ;
 int ZFS_PROP_KEYSTATUS ;
 int zfs_crypto_get_encryption_root (int *,int *,int *) ;
 int zfs_crypto_load_key (int *,int ,int ) ;
 int zfs_crypto_unload_key (int *) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;

__attribute__((used)) static int
load_key_callback(zfs_handle_t *zhp, void *data)
{
 int ret;
 boolean_t is_encroot;
 loadkey_cbdata_t *cb = data;
 uint64_t keystatus = zfs_prop_get_int(zhp, ZFS_PROP_KEYSTATUS);






 if (cb->cb_recursive) {
  ret = zfs_crypto_get_encryption_root(zhp, &is_encroot, ((void*)0));
  if (ret != 0)
   return (ret);
  if (!is_encroot)
   return (0);

  if ((cb->cb_loadkey && keystatus == ZFS_KEYSTATUS_AVAILABLE) ||
      (!cb->cb_loadkey && keystatus == ZFS_KEYSTATUS_UNAVAILABLE))
   return (0);
 }

 cb->cb_numattempted++;

 if (cb->cb_loadkey)
  ret = zfs_crypto_load_key(zhp, cb->cb_noop, cb->cb_keylocation);
 else
  ret = zfs_crypto_unload_key(zhp);

 if (ret != 0) {
  cb->cb_numfailed++;
  return (ret);
 }

 return (0);
}
