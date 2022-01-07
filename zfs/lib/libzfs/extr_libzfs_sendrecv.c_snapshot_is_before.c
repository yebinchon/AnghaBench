
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ zfs_type; int zfs_name; int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef scalar_t__ uint64_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ UINT64_MAX ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_CREATETXG ;
 int ZFS_PROP_ORIGIN ;
 int ZFS_TYPE_DATASET ;
 scalar_t__ ZFS_TYPE_FILESYSTEM ;
 scalar_t__ ZFS_TYPE_VOLUME ;
 TYPE_1__* name_to_dir_handle (int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int zfs_close (TYPE_1__*) ;
 TYPE_1__* zfs_open (int ,char*,int ) ;
 scalar_t__ zfs_prop_get (TYPE_1__*,int ,char*,int,int *,int *,int ,int ) ;
 scalar_t__ zfs_prop_get_int (TYPE_1__*,int ) ;

__attribute__((used)) static boolean_t
snapshot_is_before(zfs_handle_t *earlier, zfs_handle_t *later)
{
 boolean_t ret;
 uint64_t later_txg =
     (later->zfs_type == ZFS_TYPE_FILESYSTEM ||
     later->zfs_type == ZFS_TYPE_VOLUME ?
     UINT64_MAX : zfs_prop_get_int(later, ZFS_PROP_CREATETXG));
 uint64_t earlier_txg = zfs_prop_get_int(earlier, ZFS_PROP_CREATETXG);

 if (earlier_txg >= later_txg)
  return (B_FALSE);

 zfs_handle_t *earlier_dir = name_to_dir_handle(earlier->zfs_hdl,
     earlier->zfs_name);
 zfs_handle_t *later_dir = name_to_dir_handle(later->zfs_hdl,
     later->zfs_name);

 if (strcmp(earlier_dir->zfs_name, later_dir->zfs_name) == 0) {
  zfs_close(earlier_dir);
  zfs_close(later_dir);
  return (B_TRUE);
 }

 char clonename[ZFS_MAX_DATASET_NAME_LEN];
 if (zfs_prop_get(later_dir, ZFS_PROP_ORIGIN, clonename,
     ZFS_MAX_DATASET_NAME_LEN, ((void*)0), ((void*)0), 0, B_TRUE) != 0) {
  zfs_close(earlier_dir);
  zfs_close(later_dir);
  return (B_FALSE);
 }

 zfs_handle_t *origin = zfs_open(earlier->zfs_hdl, clonename,
     ZFS_TYPE_DATASET);
 uint64_t origin_txg = zfs_prop_get_int(origin, ZFS_PROP_CREATETXG);






 if (origin_txg == earlier_txg &&
     strcmp(origin->zfs_name, earlier->zfs_name) == 0) {
  zfs_close(earlier_dir);
  zfs_close(later_dir);
  zfs_close(origin);
  return (B_TRUE);
 }
 zfs_close(earlier_dir);
 zfs_close(later_dir);

 ret = snapshot_is_before(earlier, origin);
 zfs_close(origin);
 return (ret);
}
