
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zc_nvlist_src_size; scalar_t__ zc_name; scalar_t__ zc_simple; int zc_obj; int zc_cookie; int zc_iflags; int zc_nvlist_src; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int nvlist_t ;
typedef int dsl_dataset_t ;


 int EINTR ;
 int ENOENT ;
 int ESRCH ;
 int FORREAL ;
 int FTAG ;
 int JUSTLOOKING ;
 int SET_ERROR (int) ;
 int SNAP_ITER_MAX_TXG ;
 int SNAP_ITER_MIN_TXG ;
 scalar_t__ ZFS_MAX_DATASET_NAME_LEN ;
 int dmu_objset_from_ds (int *,int **) ;
 int dmu_objset_hold (scalar_t__,int ,int **) ;
 int dmu_objset_pool (int *) ;
 int dmu_objset_rele (int *,int ) ;
 int dmu_snapshot_list_next (int *,scalar_t__,scalar_t__,int *,int *,int *) ;
 int dsl_dataset_hold_obj (int ,int ,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 scalar_t__ dsl_get_creationtxg (int *) ;
 int get_nvlist (int ,scalar_t__,int ,int **) ;
 scalar_t__ issig (int ) ;
 int nvlist_free (int *) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 char* strchr (scalar_t__,char) ;
 scalar_t__ strlcat (scalar_t__,char*,int) ;
 scalar_t__ strlen (scalar_t__) ;
 int zfs_ioc_objset_stats_impl (TYPE_1__*,int *) ;

__attribute__((used)) static int
zfs_ioc_snapshot_list_next(zfs_cmd_t *zc)
{
 int error;
 objset_t *os, *ossnap;
 dsl_dataset_t *ds;
 uint64_t min_txg = 0, max_txg = 0;

 if (zc->zc_nvlist_src_size != 0) {
  nvlist_t *props = ((void*)0);
  error = get_nvlist(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
      zc->zc_iflags, &props);
  if (error != 0)
   return (error);
  (void) nvlist_lookup_uint64(props, SNAP_ITER_MIN_TXG,
      &min_txg);
  (void) nvlist_lookup_uint64(props, SNAP_ITER_MAX_TXG,
      &max_txg);
  nvlist_free(props);
 }

 error = dmu_objset_hold(zc->zc_name, FTAG, &os);
 if (error != 0) {
  return (error == ENOENT ? ESRCH : error);
 }





 if (strlcat(zc->zc_name, "@", sizeof (zc->zc_name)) >=
     ZFS_MAX_DATASET_NAME_LEN) {
  dmu_objset_rele(os, FTAG);
  return (SET_ERROR(ESRCH));
 }

 while (error == 0) {
  if (issig(JUSTLOOKING) && issig(FORREAL)) {
   error = SET_ERROR(EINTR);
   break;
  }

  error = dmu_snapshot_list_next(os,
      sizeof (zc->zc_name) - strlen(zc->zc_name),
      zc->zc_name + strlen(zc->zc_name), &zc->zc_obj,
      &zc->zc_cookie, ((void*)0));
  if (error == ENOENT) {
   error = SET_ERROR(ESRCH);
   break;
  } else if (error != 0) {
   break;
  }

  error = dsl_dataset_hold_obj(dmu_objset_pool(os), zc->zc_obj,
      FTAG, &ds);
  if (error != 0)
   break;

  if ((min_txg != 0 && dsl_get_creationtxg(ds) < min_txg) ||
      (max_txg != 0 && dsl_get_creationtxg(ds) > max_txg)) {
   dsl_dataset_rele(ds, FTAG);

   *(strchr(zc->zc_name, '@') + 1) = '\0';

   continue;
  }

  if (zc->zc_simple) {
   dsl_dataset_rele(ds, FTAG);
   break;
  }

  if ((error = dmu_objset_from_ds(ds, &ossnap)) != 0) {
   dsl_dataset_rele(ds, FTAG);
   break;
  }
  if ((error = zfs_ioc_objset_stats_impl(zc, ossnap)) != 0) {
   dsl_dataset_rele(ds, FTAG);
   break;
  }
  dsl_dataset_rele(ds, FTAG);
  break;
 }

 dmu_objset_rele(os, FTAG);

 if (error != 0)
  *strchr(zc->zc_name, '@') = '\0';
 return (error);
}
