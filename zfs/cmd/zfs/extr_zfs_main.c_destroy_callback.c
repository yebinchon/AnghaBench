
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_3__ {int cb_snap_count; int cb_error; scalar_t__ cb_recurse; scalar_t__ cb_defer_destroy; scalar_t__ cb_force; int cb_batchedsnaps; scalar_t__ cb_dryrun; scalar_t__ cb_parsable; scalar_t__ cb_verbose; } ;
typedef TYPE_1__ destroy_cbdata_t ;


 int B_TRUE ;
 int MS_FORCE ;
 scalar_t__ ZFS_TYPE_FILESYSTEM ;
 scalar_t__ ZFS_TYPE_SNAPSHOT ;
 int destroy_batched (TYPE_1__*) ;
 int fnvlist_add_boolean (int ,char const*) ;
 char* gettext (char*) ;
 int printf (char*,char const*) ;
 int * strchr (char*,char) ;
 int zfs_close (int *) ;
 scalar_t__ zfs_destroy (int *,scalar_t__) ;
 char* zfs_get_name (int *) ;
 scalar_t__ zfs_get_type (int *) ;
 scalar_t__ zfs_unmount (int *,int *,int ) ;

__attribute__((used)) static int
destroy_callback(zfs_handle_t *zhp, void *data)
{
 destroy_cbdata_t *cb = data;
 const char *name = zfs_get_name(zhp);
 int error;

 if (cb->cb_verbose) {
  if (cb->cb_parsable) {
   (void) printf("destroy\t%s\n", name);
  } else if (cb->cb_dryrun) {
   (void) printf(gettext("would destroy %s\n"),
       name);
  } else {
   (void) printf(gettext("will destroy %s\n"),
       name);
  }
 }





 if (strchr(zfs_get_name(zhp), '/') == ((void*)0) &&
     zfs_get_type(zhp) == ZFS_TYPE_FILESYSTEM) {
  zfs_close(zhp);
  return (0);
 }
 if (cb->cb_dryrun) {
  zfs_close(zhp);
  return (0);
 }







 if (zfs_get_type(zhp) == ZFS_TYPE_SNAPSHOT) {
  cb->cb_snap_count++;
  fnvlist_add_boolean(cb->cb_batchedsnaps, name);
  if (cb->cb_snap_count % 10 == 0 && cb->cb_defer_destroy)
   error = destroy_batched(cb);
 } else {
  error = destroy_batched(cb);
  if (error != 0 ||
      zfs_unmount(zhp, ((void*)0), cb->cb_force ? MS_FORCE : 0) != 0 ||
      zfs_destroy(zhp, cb->cb_defer_destroy) != 0) {
   zfs_close(zhp);





   if (cb->cb_recurse) {
    cb->cb_error = B_TRUE;
    return (0);
   }
   return (-1);
  }
 }

 zfs_close(zhp);
 return (0);
}
