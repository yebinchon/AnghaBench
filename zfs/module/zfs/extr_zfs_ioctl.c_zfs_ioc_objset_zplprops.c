
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dds_inconsistent; } ;
struct TYPE_5__ {scalar_t__ zc_nvlist_dst; TYPE_4__ zc_objset_stats; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int objset_t ;
typedef int nvlist_t ;


 scalar_t__ DMU_OST_ZFS ;
 int ENOENT ;
 int FTAG ;
 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int SET_ERROR (int ) ;
 int VERIFY (int) ;
 int ZFS_PROP_CASE ;
 int ZFS_PROP_NORMALIZE ;
 int ZFS_PROP_UTF8ONLY ;
 int ZFS_PROP_VERSION ;
 int dmu_objset_fast_stat (int *,TYPE_4__*) ;
 int dmu_objset_hold (int ,int ,int **) ;
 int dmu_objset_rele (int *,int ) ;
 scalar_t__ dmu_objset_type (int *) ;
 int nvl_add_zplprop (int *,int *,int ) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int put_nvlist (TYPE_1__*,int *) ;

__attribute__((used)) static int
zfs_ioc_objset_zplprops(zfs_cmd_t *zc)
{
 objset_t *os;
 int err;


 if ((err = dmu_objset_hold(zc->zc_name, FTAG, &os)))
  return (err);

 dmu_objset_fast_stat(os, &zc->zc_objset_stats);






 if (zc->zc_nvlist_dst != 0 &&
     !zc->zc_objset_stats.dds_inconsistent &&
     dmu_objset_type(os) == DMU_OST_ZFS) {
  nvlist_t *nv;

  VERIFY(nvlist_alloc(&nv, NV_UNIQUE_NAME, KM_SLEEP) == 0);
  if ((err = nvl_add_zplprop(os, nv, ZFS_PROP_VERSION)) == 0 &&
      (err = nvl_add_zplprop(os, nv, ZFS_PROP_NORMALIZE)) == 0 &&
      (err = nvl_add_zplprop(os, nv, ZFS_PROP_UTF8ONLY)) == 0 &&
      (err = nvl_add_zplprop(os, nv, ZFS_PROP_CASE)) == 0)
   err = put_nvlist(zc, nv);
  nvlist_free(nv);
 } else {
  err = SET_ERROR(ENOENT);
 }
 dmu_objset_rele(os, FTAG);
 return (err);
}
