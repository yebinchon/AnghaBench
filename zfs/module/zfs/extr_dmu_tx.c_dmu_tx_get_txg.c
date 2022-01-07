
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ tx_txg; } ;
typedef TYPE_1__ dmu_tx_t ;


 int ASSERT (int) ;

uint64_t
dmu_tx_get_txg(dmu_tx_t *tx)
{
 ASSERT(tx->tx_txg != 0);
 return (tx->tx_txg);
}
