
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int objset_t ;
struct TYPE_3__ {scalar_t__ dp_tmp_userrefs_obj; int * dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dmu_tx_t ;


 int ASSERT (int) ;
 int DMU_OT_USERREFS ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_TMP_USERREFS ;
 int dmu_tx_is_syncing (int *) ;
 scalar_t__ zap_create_link (int *,int ,int ,int ,int *) ;

void
dsl_pool_user_hold_create_obj(dsl_pool_t *dp, dmu_tx_t *tx)
{
 objset_t *mos = dp->dp_meta_objset;

 ASSERT(dp->dp_tmp_userrefs_obj == 0);
 ASSERT(dmu_tx_is_syncing(tx));

 dp->dp_tmp_userrefs_obj = zap_create_link(mos, DMU_OT_USERREFS,
     DMU_POOL_DIRECTORY_OBJECT, DMU_POOL_TMP_USERREFS, tx);
}
