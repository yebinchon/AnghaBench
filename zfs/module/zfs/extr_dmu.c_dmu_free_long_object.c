
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;


 int DMU_OBJECT_END ;
 int TXG_WAIT ;
 int dmu_free_long_range (int *,int ,int ,int ) ;
 int dmu_object_free (int *,int ,int *) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int *) ;
 int dmu_tx_hold_bonus (int *,int ) ;
 int dmu_tx_hold_free (int *,int ,int ,int ) ;
 int dmu_tx_mark_netfree (int *) ;

int
dmu_free_long_object(objset_t *os, uint64_t object)
{
 dmu_tx_t *tx;
 int err;

 err = dmu_free_long_range(os, object, 0, DMU_OBJECT_END);
 if (err != 0)
  return (err);

 tx = dmu_tx_create(os);
 dmu_tx_hold_bonus(tx, object);
 dmu_tx_hold_free(tx, object, 0, DMU_OBJECT_END);
 dmu_tx_mark_netfree(tx);
 err = dmu_tx_assign(tx, TXG_WAIT);
 if (err == 0) {
  if (err == 0)
   err = dmu_object_free(os, object, tx);

  dmu_tx_commit(tx);
 } else {
  dmu_tx_abort(tx);
 }

 return (err);
}
