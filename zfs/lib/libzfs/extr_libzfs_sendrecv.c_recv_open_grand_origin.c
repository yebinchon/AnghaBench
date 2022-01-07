
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int zprop_source_t ;
struct TYPE_9__ {int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int origin ;


 int B_FALSE ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_ORIGIN ;
 int ZFS_TYPE_FILESYSTEM ;
 int zfs_close (TYPE_1__*) ;
 TYPE_1__* zfs_handle_dup (TYPE_1__*) ;
 TYPE_1__* zfs_open (int ,char*,int ) ;
 scalar_t__ zfs_prop_get (TYPE_1__*,int ,char*,int,int *,int *,int ,int ) ;

__attribute__((used)) static zfs_handle_t *
recv_open_grand_origin(zfs_handle_t *zhp)
{
 char origin[ZFS_MAX_DATASET_NAME_LEN];
 zprop_source_t src;
 zfs_handle_t *ozhp = zfs_handle_dup(zhp);

 while (ozhp != ((void*)0)) {
  if (zfs_prop_get(ozhp, ZFS_PROP_ORIGIN, origin,
      sizeof (origin), &src, ((void*)0), 0, B_FALSE) != 0)
   break;

  (void) zfs_close(ozhp);
  ozhp = zfs_open(zhp->zfs_hdl, origin, ZFS_TYPE_FILESYSTEM);
 }

 return (ozhp);
}
