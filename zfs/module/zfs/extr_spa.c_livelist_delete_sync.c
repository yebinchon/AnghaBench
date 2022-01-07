
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ spa_livelists_to_delete; int * spa_meta_objset; } ;
typedef TYPE_1__ spa_t ;
typedef int objset_t ;
struct TYPE_6__ {scalar_t__ ll_obj; scalar_t__ zap_obj; TYPE_1__* spa; } ;
typedef TYPE_2__ livelist_delete_arg_t ;
typedef int dmu_tx_t ;


 int DMU_POOL_DELETED_CLONES ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int SPA_FEATURE_LIVELIST ;
 int VERIFY0 (int ) ;
 int dsl_deadlist_free (int *,scalar_t__,int *) ;
 int spa_feature_decr (TYPE_1__*,int ,int *) ;
 int spa_notify_waiters (TYPE_1__*) ;
 int zap_count (int *,scalar_t__,scalar_t__*) ;
 int zap_destroy (int *,scalar_t__,int *) ;
 int zap_remove (int *,int ,int ,int *) ;
 int zap_remove_int (int *,scalar_t__,scalar_t__,int *) ;

__attribute__((used)) static void
livelist_delete_sync(void *arg, dmu_tx_t *tx)
{
 livelist_delete_arg_t *lda = arg;
 spa_t *spa = lda->spa;
 uint64_t ll_obj = lda->ll_obj;
 uint64_t zap_obj = lda->zap_obj;
 objset_t *mos = spa->spa_meta_objset;
 uint64_t count;


 VERIFY0(zap_remove_int(mos, zap_obj, ll_obj, tx));
 dsl_deadlist_free(mos, ll_obj, tx);
 spa_feature_decr(spa, SPA_FEATURE_LIVELIST, tx);
 VERIFY0(zap_count(mos, zap_obj, &count));
 if (count == 0) {

  VERIFY0(zap_remove(mos, DMU_POOL_DIRECTORY_OBJECT,
      DMU_POOL_DELETED_CLONES, tx));
  VERIFY0(zap_destroy(mos, zap_obj, tx));
  spa->spa_livelists_to_delete = 0;
  spa_notify_waiters(spa);
 }
}
