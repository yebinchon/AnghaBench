
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fi_guid; } ;
typedef TYPE_1__ zfeature_info_t ;
typedef scalar_t__ uint64_t ;
typedef int spa_t ;
typedef int dmu_tx_t ;
struct TYPE_6__ {int * dp_spa; } ;


 int VERIFY0 (int ) ;
 TYPE_4__* dmu_tx_pool (int *) ;
 int feature_get_refcount_from_disk (int *,TYPE_1__*,scalar_t__*) ;
 int feature_sync (int *,TYPE_1__*,scalar_t__,int *) ;
 int spa_history_log_internal (int *,char*,int *,char*,int ) ;

__attribute__((used)) static void
feature_decr_sync(void *arg, dmu_tx_t *tx)
{
 spa_t *spa = dmu_tx_pool(tx)->dp_spa;
 zfeature_info_t *feature = arg;
 uint64_t refcount;

 VERIFY0(feature_get_refcount_from_disk(spa, feature, &refcount));
 feature_sync(spa, feature, refcount - 1, tx);
 spa_history_log_internal(spa, "zhack feature decr", tx,
     "name=%s", feature->fi_guid);
}
