
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct dsl_pool {int dp_spa; } ;
struct TYPE_4__ {int tx_anyobj; int tx_txg; struct dsl_pool* tx_pool; } ;
typedef TYPE_1__ dmu_tx_t ;


 int TRUE ;
 int TXG_VERIFY (int ,int ) ;
 TYPE_1__* dmu_tx_create_dd (int *) ;

dmu_tx_t *
dmu_tx_create_assigned(struct dsl_pool *dp, uint64_t txg)
{
 dmu_tx_t *tx = dmu_tx_create_dd(((void*)0));

 TXG_VERIFY(dp->dp_spa, txg);
 tx->tx_pool = dp;
 tx->tx_txg = txg;
 tx->tx_anyobj = TRUE;

 return (tx);
}
