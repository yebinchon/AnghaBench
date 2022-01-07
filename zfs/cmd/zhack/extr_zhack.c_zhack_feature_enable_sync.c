
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fi_flags; int fi_guid; } ;
typedef TYPE_1__ zfeature_info_t ;
typedef int spa_t ;
typedef int dmu_tx_t ;
struct TYPE_5__ {int * dp_spa; } ;


 TYPE_3__* dmu_tx_pool (int *) ;
 int feature_enable_sync (int *,TYPE_1__*,int *) ;
 int spa_history_log_internal (int *,char*,int *,char*,int ,int ) ;

__attribute__((used)) static void
zhack_feature_enable_sync(void *arg, dmu_tx_t *tx)
{
 spa_t *spa = dmu_tx_pool(tx)->dp_spa;
 zfeature_info_t *feature = arg;

 feature_enable_sync(spa, feature, tx);

 spa_history_log_internal(spa, "zhack enable feature", tx,
     "name=%s flags=%u",
     feature->fi_guid, feature->fi_flags);
}
