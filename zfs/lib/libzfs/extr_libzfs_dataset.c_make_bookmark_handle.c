
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zfs_props; int * zpool_hdl; int zfs_type; int zfs_head_type; int zfs_name; int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int nvlist_t ;


 int ZFS_TYPE_BOOKMARK ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 scalar_t__ nvlist_dup (int *,int *,int ) ;
 int nvlist_free (int ) ;
 int strlcpy (int ,char const*,int) ;
 int * zpool_handle (TYPE_1__*) ;

zfs_handle_t *
make_bookmark_handle(zfs_handle_t *parent, const char *path,
    nvlist_t *bmark_props)
{
 zfs_handle_t *zhp = calloc(1, sizeof (zfs_handle_t));

 if (zhp == ((void*)0))
  return (((void*)0));


 zhp->zfs_hdl = parent->zfs_hdl;
 (void) strlcpy(zhp->zfs_name, path, sizeof (zhp->zfs_name));


 if (nvlist_dup(bmark_props, &zhp->zfs_props, 0) != 0) {
  free(zhp);
  return (((void*)0));
 }


 zhp->zfs_head_type = parent->zfs_head_type;
 zhp->zfs_type = ZFS_TYPE_BOOKMARK;

 if ((zhp->zpool_hdl = zpool_handle(zhp)) == ((void*)0)) {
  nvlist_free(zhp->zfs_props);
  free(zhp);
  return (((void*)0));
 }

 return (zhp);
}
