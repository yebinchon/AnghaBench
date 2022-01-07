
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zi_start; unsigned long long zi_end; scalar_t__ zi_level; int zi_object; int zi_objset; } ;
typedef TYPE_1__ zinject_record_t ;
typedef int objset_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
struct TYPE_7__ {int dn_datablkshift; scalar_t__ dn_nlevels; int dn_indblkshift; } ;
typedef TYPE_2__ dnode_t ;


 int EDOM ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int SPA_BLKPTRSHIFT ;
 int dmu_objset_from_ds (int *,int **) ;
 int dnode_hold (int *,int ,int ,TYPE_2__**) ;
 int dnode_rele (TYPE_2__*,int ) ;
 int dsl_dataset_hold_obj (int *,int ,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_pool_hold (char const*,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;

__attribute__((used)) static int
zio_calculate_range(const char *pool, zinject_record_t *record)
{
 dsl_pool_t *dp;
 dsl_dataset_t *ds;
 objset_t *os = ((void*)0);
 dnode_t *dn = ((void*)0);
 int error;




 error = dsl_pool_hold(pool, FTAG, &dp);
 if (error)
  return (error);

 error = dsl_dataset_hold_obj(dp, record->zi_objset, FTAG, &ds);
 dsl_pool_rele(dp, FTAG);
 if (error)
  return (error);

 error = dmu_objset_from_ds(ds, &os);
 dsl_dataset_rele(ds, FTAG);
 if (error)
  return (error);

 error = dnode_hold(os, record->zi_object, FTAG, &dn);
 if (error)
  return (error);




 if (record->zi_start != 0 || record->zi_end != -1ULL) {
  record->zi_start >>= dn->dn_datablkshift;
  record->zi_end >>= dn->dn_datablkshift;
 }
 if (record->zi_level > 0) {
  if (record->zi_level >= dn->dn_nlevels) {
   dnode_rele(dn, FTAG);
   return (SET_ERROR(EDOM));
  }

  if (record->zi_start != 0 || record->zi_end != 0) {
   int shift = dn->dn_indblkshift - SPA_BLKPTRSHIFT;

   for (int level = record->zi_level; level > 0; level--) {
    record->zi_start >>= shift;
    record->zi_end >>= shift;
   }
  }
 }

 dnode_rele(dn, FTAG);
 return (0);
}
