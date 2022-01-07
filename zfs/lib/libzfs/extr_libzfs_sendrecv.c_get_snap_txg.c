
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int uint64_t ;
typedef int name ;
typedef int libzfs_handle_t ;


 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_CREATETXG ;
 int ZFS_TYPE_SNAPSHOT ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int zfs_close (int *) ;
 scalar_t__ zfs_dataset_exists (int *,char*,int ) ;
 int * zfs_open (int *,char*,int ) ;
 int zfs_prop_get_int (int *,int ) ;

__attribute__((used)) static uint64_t
get_snap_txg(libzfs_handle_t *hdl, const char *fs, const char *snap)
{
 char name[ZFS_MAX_DATASET_NAME_LEN];
 uint64_t txg = 0;

 if (fs == ((void*)0) || fs[0] == '\0' || snap == ((void*)0) || snap[0] == '\0')
  return (txg);

 (void) snprintf(name, sizeof (name), "%s@%s", fs, snap);
 if (zfs_dataset_exists(hdl, name, ZFS_TYPE_SNAPSHOT)) {
  zfs_handle_t *zhp = zfs_open(hdl, name, ZFS_TYPE_SNAPSHOT);
  if (zhp != ((void*)0)) {
   txg = zfs_prop_get_int(zhp, ZFS_PROP_CREATETXG);
   zfs_close(zhp);
  }
 }

 return (txg);
}
