
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef enum dmu_tx_hold_type { ____Placeholder_dmu_tx_hold_type } dmu_tx_hold_type ;
typedef int dnode_t ;
struct TYPE_4__ {int tx_err; } ;
typedef TYPE_1__ dmu_tx_t ;
typedef int dmu_tx_hold_t ;


 scalar_t__ DMU_NEW_OBJECT ;
 int FTAG ;
 int * dmu_tx_hold_dnode_impl (TYPE_1__*,int *,int,scalar_t__,scalar_t__) ;
 int dnode_hold (int *,scalar_t__,int ,int **) ;
 int dnode_rele (int *,int ) ;

__attribute__((used)) static dmu_tx_hold_t *
dmu_tx_hold_object_impl(dmu_tx_t *tx, objset_t *os, uint64_t object,
    enum dmu_tx_hold_type type, uint64_t arg1, uint64_t arg2)
{
 dnode_t *dn = ((void*)0);
 dmu_tx_hold_t *txh;
 int err;

 if (object != DMU_NEW_OBJECT) {
  err = dnode_hold(os, object, FTAG, &dn);
  if (err != 0) {
   tx->tx_err = err;
   return (((void*)0));
  }
 }
 txh = dmu_tx_hold_dnode_impl(tx, dn, type, arg1, arg2);
 if (dn != ((void*)0))
  dnode_rele(dn, FTAG);
 return (txh);
}
