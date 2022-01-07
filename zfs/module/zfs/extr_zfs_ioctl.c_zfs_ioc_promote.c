
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* zc_name; int zc_string; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int dsl_pool_t ;
struct TYPE_10__ {int ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_11__ {int dd_origin_obj; } ;


 int DS_FIND_SNAPSHOTS ;
 int EINVAL ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 scalar_t__ dataset_namecheck (char*,int *,int *) ;
 int dmu_objset_find (char*,int ,int *,int ) ;
 int dsl_dataset_hold (int *,char*,int ,TYPE_2__**) ;
 int dsl_dataset_hold_obj (int *,int ,int ,TYPE_2__**) ;
 int dsl_dataset_name (TYPE_2__*,char*) ;
 int dsl_dataset_promote (char*,int ) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 int dsl_dir_is_clone (int ) ;
 TYPE_4__* dsl_dir_phys (int ) ;
 int dsl_pool_hold (char*,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;
 char* strchr (char*,char) ;
 int zfs_unmount_snap_cb ;

__attribute__((used)) static int
zfs_ioc_promote(zfs_cmd_t *zc)
{
 dsl_pool_t *dp;
 dsl_dataset_t *ds, *ods;
 char origin[ZFS_MAX_DATASET_NAME_LEN];
 char *cp;
 int error;

 zc->zc_name[sizeof (zc->zc_name) - 1] = '\0';
 if (dataset_namecheck(zc->zc_name, ((void*)0), ((void*)0)) != 0 ||
     strchr(zc->zc_name, '%'))
  return (SET_ERROR(EINVAL));

 error = dsl_pool_hold(zc->zc_name, FTAG, &dp);
 if (error != 0)
  return (error);

 error = dsl_dataset_hold(dp, zc->zc_name, FTAG, &ds);
 if (error != 0) {
  dsl_pool_rele(dp, FTAG);
  return (error);
 }

 if (!dsl_dir_is_clone(ds->ds_dir)) {
  dsl_dataset_rele(ds, FTAG);
  dsl_pool_rele(dp, FTAG);
  return (SET_ERROR(EINVAL));
 }

 error = dsl_dataset_hold_obj(dp,
     dsl_dir_phys(ds->ds_dir)->dd_origin_obj, FTAG, &ods);
 if (error != 0) {
  dsl_dataset_rele(ds, FTAG);
  dsl_pool_rele(dp, FTAG);
  return (error);
 }

 dsl_dataset_name(ods, origin);
 dsl_dataset_rele(ods, FTAG);
 dsl_dataset_rele(ds, FTAG);
 dsl_pool_rele(dp, FTAG);





 cp = strchr(origin, '@');
 if (cp)
  *cp = '\0';
 (void) dmu_objset_find(origin,
     zfs_unmount_snap_cb, ((void*)0), DS_FIND_SNAPSHOTS);
 return (dsl_dataset_promote(zc->zc_name, zc->zc_string));
}
