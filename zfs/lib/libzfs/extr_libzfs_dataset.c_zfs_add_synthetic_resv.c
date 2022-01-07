
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int zfs_prop_t ;
struct TYPE_6__ {int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;


 int ZFS_PROP_VOLBLOCKSIZE ;
 int ZFS_PROP_VOLSIZE ;
 int fnvlist_add_uint64 (int *,int ,scalar_t__) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int no_memory (int ) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,scalar_t__) ;
 scalar_t__ nvlist_exists (int *,int ) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ zfs_prop_get_int (TYPE_1__*,int ) ;
 int zfs_prop_to_name (int ) ;
 scalar_t__ zfs_which_resv_prop (TYPE_1__*,int *) ;
 int * zpool_handle (TYPE_1__*) ;
 scalar_t__ zvol_volsize_to_reservation (int *,scalar_t__,int *) ;

int
zfs_add_synthetic_resv(zfs_handle_t *zhp, nvlist_t *nvl)
{
 uint64_t old_volsize;
 uint64_t new_volsize;
 uint64_t old_reservation;
 uint64_t new_reservation;
 zfs_prop_t resv_prop;
 nvlist_t *props;
 zpool_handle_t *zph = zpool_handle(zhp);





 old_volsize = zfs_prop_get_int(zhp, ZFS_PROP_VOLSIZE);
 if (zfs_which_resv_prop(zhp, &resv_prop) < 0)
  return (-1);
 old_reservation = zfs_prop_get_int(zhp, resv_prop);

 props = fnvlist_alloc();
 fnvlist_add_uint64(props, zfs_prop_to_name(ZFS_PROP_VOLBLOCKSIZE),
     zfs_prop_get_int(zhp, ZFS_PROP_VOLBLOCKSIZE));

 if ((zvol_volsize_to_reservation(zph, old_volsize, props) !=
     old_reservation) || nvlist_exists(nvl,
     zfs_prop_to_name(resv_prop))) {
  fnvlist_free(props);
  return (0);
 }
 if (nvlist_lookup_uint64(nvl, zfs_prop_to_name(ZFS_PROP_VOLSIZE),
     &new_volsize) != 0) {
  fnvlist_free(props);
  return (-1);
 }
 new_reservation = zvol_volsize_to_reservation(zph, new_volsize, props);
 fnvlist_free(props);

 if (nvlist_add_uint64(nvl, zfs_prop_to_name(resv_prop),
     new_reservation) != 0) {
  (void) no_memory(zhp->zfs_hdl);
  return (-1);
 }
 return (1);
}
