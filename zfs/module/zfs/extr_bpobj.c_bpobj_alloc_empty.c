
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int spa_t ;
typedef int objset_t ;
struct TYPE_3__ {scalar_t__ dp_empty_bpobj; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dmu_tx_t ;


 int ASSERT (int) ;
 int ASSERT0 (scalar_t__) ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_EMPTY_BPOBJ ;
 int SPA_FEATURE_EMPTY_BPOBJ ;
 int SPA_OLD_MAXBLOCKSIZE ;
 int VERIFY (int) ;
 scalar_t__ bpobj_alloc (int *,int,int *) ;
 TYPE_1__* dmu_objset_pool (int *) ;
 int * dmu_objset_spa (int *) ;
 int spa_feature_incr (int *,int ,int *) ;
 int spa_feature_is_active (int *,int ) ;
 scalar_t__ spa_feature_is_enabled (int *,int ) ;
 scalar_t__ zap_add (int *,int ,int ,int,int,scalar_t__*,int *) ;

uint64_t
bpobj_alloc_empty(objset_t *os, int blocksize, dmu_tx_t *tx)
{
 spa_t *spa = dmu_objset_spa(os);
 dsl_pool_t *dp = dmu_objset_pool(os);

 if (spa_feature_is_enabled(spa, SPA_FEATURE_EMPTY_BPOBJ)) {
  if (!spa_feature_is_active(spa, SPA_FEATURE_EMPTY_BPOBJ)) {
   ASSERT0(dp->dp_empty_bpobj);
   dp->dp_empty_bpobj =
       bpobj_alloc(os, SPA_OLD_MAXBLOCKSIZE, tx);
   VERIFY(zap_add(os,
       DMU_POOL_DIRECTORY_OBJECT,
       DMU_POOL_EMPTY_BPOBJ, sizeof (uint64_t), 1,
       &dp->dp_empty_bpobj, tx) == 0);
  }
  spa_feature_incr(spa, SPA_FEATURE_EMPTY_BPOBJ, tx);
  ASSERT(dp->dp_empty_bpobj != 0);
  return (dp->dp_empty_bpobj);
 } else {
  return (bpobj_alloc(os, blocksize, tx));
 }
}
