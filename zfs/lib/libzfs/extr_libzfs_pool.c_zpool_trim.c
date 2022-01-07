
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zpool_hdl; int zpool_name; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_7__ {int secure; scalar_t__ fullpool; int rate; } ;
typedef TYPE_2__ trimflags_t ;
typedef int pool_trim_func_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int msg ;
typedef scalar_t__ int64_t ;


 scalar_t__ EZFS_TRIM_NOTSUP ;
 int TEXT_DOMAIN ;
 int ZPOOL_TRIM_VDEVS ;
 char* dgettext (int ,char*) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int * fnvlist_lookup_nvlist (int *,int ) ;
 int fnvpair_value_int64 (int *) ;
 int lzc_trim (int ,int ,int ,int ,int *,int **) ;
 scalar_t__ nvlist_lookup_string (int *,char*,char**) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int snprintf (char*,int,char*) ;
 int verify (int ) ;
 scalar_t__ xlate_trim_err (int ) ;
 int zfs_error_fmt (int ,scalar_t__,char*,char*) ;
 int zpool_standard_error (int ,int,char*) ;
 int zpool_translate_vdev_guids (TYPE_1__*,int *,int *,int *,int **) ;

int
zpool_trim(zpool_handle_t *zhp, pool_trim_func_t cmd_type, nvlist_t *vds,
    trimflags_t *trim_flags)
{
 char msg[1024];
 int err;

 nvlist_t *vdev_guids = fnvlist_alloc();
 nvlist_t *guids_to_paths = fnvlist_alloc();
 nvlist_t *vd_errlist = ((void*)0);
 nvlist_t *errlist;
 nvpair_t *elem;

 err = zpool_translate_vdev_guids(zhp, vds, vdev_guids,
     guids_to_paths, &vd_errlist);
 if (err == 0) {
  err = lzc_trim(zhp->zpool_name, cmd_type, trim_flags->rate,
      trim_flags->secure, vdev_guids, &errlist);
  if (err == 0) {
   fnvlist_free(vdev_guids);
   fnvlist_free(guids_to_paths);
   return (0);
  }

  if (errlist != ((void*)0)) {
   vd_errlist = fnvlist_lookup_nvlist(errlist,
       ZPOOL_TRIM_VDEVS);
  }

  (void) snprintf(msg, sizeof (msg),
      dgettext(TEXT_DOMAIN, "operation failed"));
 } else {
  verify(vd_errlist != ((void*)0));
 }

 for (elem = nvlist_next_nvpair(vd_errlist, ((void*)0));
     elem != ((void*)0); elem = nvlist_next_nvpair(vd_errlist, elem)) {
  int64_t vd_error = xlate_trim_err(fnvpair_value_int64(elem));
  char *path;






  if (vd_error == EZFS_TRIM_NOTSUP &&
      trim_flags->fullpool &&
      !trim_flags->secure) {
   continue;
  }

  if (nvlist_lookup_string(guids_to_paths, nvpair_name(elem),
      &path) != 0)
   path = nvpair_name(elem);

  (void) zfs_error_fmt(zhp->zpool_hdl, vd_error,
      "cannot trim '%s'", path);
 }

 fnvlist_free(vdev_guids);
 fnvlist_free(guids_to_paths);

 if (vd_errlist != ((void*)0)) {
  fnvlist_free(vd_errlist);
  return (-1);
 }

 return (zpool_standard_error(zhp->zpool_hdl, err, msg));
}
