
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dsl_pool_t ;
struct TYPE_3__ {int * tx_pool; } ;
typedef TYPE_1__ dmu_tx_t ;


 int ASSERT (int ) ;

dsl_pool_t *
dmu_tx_pool(dmu_tx_t *tx)
{
 ASSERT(tx->tx_pool != ((void*)0));
 return (tx->tx_pool);
}
