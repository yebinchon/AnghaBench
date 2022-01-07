
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_15__ {scalar_t__ guid; int num_redact_snaps; scalar_t__ bookmark_ok; int name; int * skip; } ;
typedef TYPE_2__ guid_to_name_data_t ;


 int EEXIST ;
 int ZFS_PROP_GUID ;
 scalar_t__ redact_snaps_match (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ strcmp (char const*,int *) ;
 int strcpy (int ,int ) ;
 char* strrchr (int ,char) ;
 int zfs_close (TYPE_1__*) ;
 int zfs_iter_bookmarks (TYPE_1__*,int (*) (TYPE_1__*,void*),TYPE_2__*) ;
 int zfs_iter_children (TYPE_1__*,int (*) (TYPE_1__*,void*),TYPE_2__*) ;
 scalar_t__ zfs_prop_get_int (TYPE_1__*,int ) ;

__attribute__((used)) static int
guid_to_name_cb(zfs_handle_t *zhp, void *arg)
{
 guid_to_name_data_t *gtnd = arg;
 const char *slash;
 int err;

 if (gtnd->skip != ((void*)0) &&
     (slash = strrchr(zhp->zfs_name, '/')) != ((void*)0) &&
     strcmp(slash + 1, gtnd->skip) == 0) {
  zfs_close(zhp);
  return (0);
 }

 if (zfs_prop_get_int(zhp, ZFS_PROP_GUID) == gtnd->guid &&
     (gtnd->num_redact_snaps == -1 || redact_snaps_match(zhp, gtnd))) {
  (void) strcpy(gtnd->name, zhp->zfs_name);
  zfs_close(zhp);
  return (EEXIST);
 }

 err = zfs_iter_children(zhp, guid_to_name_cb, gtnd);
 if (err != EEXIST && gtnd->bookmark_ok)
  err = zfs_iter_bookmarks(zhp, guid_to_name_cb, gtnd);
 zfs_close(zhp);
 return (err);
}
