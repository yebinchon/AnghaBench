
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zpool_hdl; int zpool_name; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef int uint64_t ;
typedef int pool_initialize_func_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int int64_t ;
typedef scalar_t__ boolean_t ;


 int TEXT_DOMAIN ;
 int ZPOOL_INITIALIZE_VDEVS ;
 int ZPOOL_WAIT_INITIALIZE ;
 int dgettext (int ,char*) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int * fnvlist_lookup_nvlist (int *,int ) ;
 int fnvpair_value_int64 (int *) ;
 int fnvpair_value_uint64 (int *) ;
 int lzc_initialize (int ,int ,int *,int **) ;
 int lzc_wait_tag (int ,int ,int ,int *) ;
 scalar_t__ nvlist_lookup_string (int *,char*,char**) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int verify (int ) ;
 int xlate_init_err (int ) ;
 int zfs_error_fmt (int ,int ,char*,char*) ;
 int zpool_standard_error (int ,int,int ) ;
 int zpool_standard_error_fmt (int ,int,int ,char*) ;
 int zpool_translate_vdev_guids (TYPE_1__*,int *,int *,int *,int **) ;

int
zpool_initialize_impl(zpool_handle_t *zhp, pool_initialize_func_t cmd_type,
    nvlist_t *vds, boolean_t wait)
{
 int err;

 nvlist_t *vdev_guids = fnvlist_alloc();
 nvlist_t *guids_to_paths = fnvlist_alloc();
 nvlist_t *vd_errlist = ((void*)0);
 nvlist_t *errlist;
 nvpair_t *elem;

 err = zpool_translate_vdev_guids(zhp, vds, vdev_guids,
     guids_to_paths, &vd_errlist);

 if (err != 0) {
  verify(vd_errlist != ((void*)0));
  goto list_errors;
 }

 err = lzc_initialize(zhp->zpool_name, cmd_type,
     vdev_guids, &errlist);

 if (err != 0) {
  if (errlist != ((void*)0)) {
   vd_errlist = fnvlist_lookup_nvlist(errlist,
       ZPOOL_INITIALIZE_VDEVS);
   goto list_errors;
  }
  (void) zpool_standard_error(zhp->zpool_hdl, err,
      dgettext(TEXT_DOMAIN, "operation failed"));
  goto out;
 }

 if (wait) {
  for (elem = nvlist_next_nvpair(vdev_guids, ((void*)0)); elem != ((void*)0);
      elem = nvlist_next_nvpair(vdev_guids, elem)) {

   uint64_t guid = fnvpair_value_uint64(elem);

   err = lzc_wait_tag(zhp->zpool_name,
       ZPOOL_WAIT_INITIALIZE, guid, ((void*)0));
   if (err != 0) {
    (void) zpool_standard_error_fmt(zhp->zpool_hdl,
        err, dgettext(TEXT_DOMAIN, "error "
        "waiting for '%s' to initialize"),
        nvpair_name(elem));

    goto out;
   }
  }
 }
 goto out;

list_errors:
 for (elem = nvlist_next_nvpair(vd_errlist, ((void*)0)); elem != ((void*)0);
     elem = nvlist_next_nvpair(vd_errlist, elem)) {
  int64_t vd_error = xlate_init_err(fnvpair_value_int64(elem));
  char *path;

  if (nvlist_lookup_string(guids_to_paths, nvpair_name(elem),
      &path) != 0)
   path = nvpair_name(elem);

  (void) zfs_error_fmt(zhp->zpool_hdl, vd_error,
      "cannot initialize '%s'", path);
 }

out:
 fnvlist_free(vdev_guids);
 fnvlist_free(guids_to_paths);

 if (vd_errlist != ((void*)0))
  fnvlist_free(vd_errlist);

 return (err == 0 ? 0 : -1);
}
