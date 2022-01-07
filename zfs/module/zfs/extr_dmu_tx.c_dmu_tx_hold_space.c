
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {scalar_t__ tx_txg; int tx_objset; } ;
typedef TYPE_1__ dmu_tx_t ;
struct TYPE_7__ {int txh_space_towrite; } ;
typedef TYPE_2__ dmu_tx_hold_t ;


 int ASSERT (int) ;
 int DMU_NEW_OBJECT ;
 int FTAG ;
 int THT_SPACE ;
 TYPE_2__* dmu_tx_hold_object_impl (TYPE_1__*,int ,int ,int ,int ,int ) ;
 int zfs_refcount_add_many (int *,int ,int ) ;

void
dmu_tx_hold_space(dmu_tx_t *tx, uint64_t space)
{
 dmu_tx_hold_t *txh;

 ASSERT(tx->tx_txg == 0);

 txh = dmu_tx_hold_object_impl(tx, tx->tx_objset,
     DMU_NEW_OBJECT, THT_SPACE, space, 0);
 if (txh) {
  (void) zfs_refcount_add_many(
      &txh->txh_space_towrite, space, FTAG);
 }
}
