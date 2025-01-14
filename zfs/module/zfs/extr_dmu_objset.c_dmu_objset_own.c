
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int objset_t ;
struct TYPE_13__ {TYPE_1__* dp_spa; } ;
typedef TYPE_3__ dsl_pool_t ;
struct TYPE_14__ {TYPE_2__* ds_dir; } ;
typedef TYPE_4__ dsl_dataset_t ;
typedef int ds_hold_flags_t ;
typedef int dmu_objset_type_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_12__ {scalar_t__ dd_crypto_obj; } ;
struct TYPE_11__ {int spa_claiming; } ;


 int DS_HOLD_FLAG_DECRYPT ;
 int FTAG ;
 int dmu_objset_id_quota_upgrade (int *) ;
 int dmu_objset_own_impl (TYPE_4__*,int ,scalar_t__,scalar_t__,void*,int **) ;
 scalar_t__ dmu_objset_projectquota_upgradable (int *) ;
 scalar_t__ dmu_objset_userobjspace_upgradable (int *) ;
 int dsl_dataset_disown (TYPE_4__*,int ,void*) ;
 int dsl_dataset_own (TYPE_3__*,char const*,int ,void*,TYPE_4__**) ;
 int dsl_pool_hold (char const*,int ,TYPE_3__**) ;
 int dsl_pool_rele (TYPE_3__*,int ) ;

int
dmu_objset_own(const char *name, dmu_objset_type_t type,
    boolean_t readonly, boolean_t decrypt, void *tag, objset_t **osp)
{
 dsl_pool_t *dp;
 dsl_dataset_t *ds;
 int err;
 ds_hold_flags_t flags = (decrypt) ? DS_HOLD_FLAG_DECRYPT : 0;

 err = dsl_pool_hold(name, FTAG, &dp);
 if (err != 0)
  return (err);
 err = dsl_dataset_own(dp, name, flags, tag, &ds);
 if (err != 0) {
  dsl_pool_rele(dp, FTAG);
  return (err);
 }
 err = dmu_objset_own_impl(ds, type, readonly, decrypt, tag, osp);
 if (err != 0) {
  dsl_dataset_disown(ds, flags, tag);
  dsl_pool_rele(dp, FTAG);
  return (err);
 }







 if ((dmu_objset_userobjspace_upgradable(*osp) ||
     dmu_objset_projectquota_upgradable(*osp)) &&
     !readonly && !dp->dp_spa->spa_claiming &&
     (ds->ds_dir->dd_crypto_obj == 0 || decrypt))
  dmu_objset_id_quota_upgrade(*osp);

 dsl_pool_rele(dp, FTAG);
 return (0);
}
