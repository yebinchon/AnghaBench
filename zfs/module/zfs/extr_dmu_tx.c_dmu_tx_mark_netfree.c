
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_netfree; } ;
typedef TYPE_1__ dmu_tx_t ;


 int B_TRUE ;

void
dmu_tx_mark_netfree(dmu_tx_t *tx)
{
 tx->tx_netfree = B_TRUE;
}
