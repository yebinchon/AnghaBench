
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_anyobj; } ;
typedef TYPE_1__ dmu_tx_t ;



int
dmu_tx_private_ok(dmu_tx_t *tx)
{
 return (tx->tx_anyobj);
}
