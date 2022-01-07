
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int txh_space_towrite; } ;
typedef TYPE_1__ dmu_tx_hold_t ;


 int DNODE_MIN_SIZE ;
 int FTAG ;
 int zfs_refcount_add_many (int *,int ,int ) ;

__attribute__((used)) static void
dmu_tx_count_dnode(dmu_tx_hold_t *txh)
{
 (void) zfs_refcount_add_many(&txh->txh_space_towrite,
     DNODE_MIN_SIZE, FTAG);
}
