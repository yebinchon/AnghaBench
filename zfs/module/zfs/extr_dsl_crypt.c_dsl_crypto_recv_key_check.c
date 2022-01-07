
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dsl_dataset_t ;
struct TYPE_6__ {scalar_t__ dcrka_dsobj; scalar_t__ dcrka_fromobj; int dcrka_nvl; int dcrka_ostype; } ;
typedef TYPE_1__ dsl_crypto_recv_key_arg_t ;
struct TYPE_7__ {int tx_pool; } ;
typedef TYPE_2__ dmu_tx_t ;


 int FTAG ;
 int dsl_crypto_recv_raw_key_check (int *,int ,TYPE_2__*) ;
 int dsl_crypto_recv_raw_objset_check (int *,int *,int ,int ,TYPE_2__*) ;
 int dsl_dataset_hold_obj (int ,scalar_t__,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;

int
dsl_crypto_recv_key_check(void *arg, dmu_tx_t *tx)
{
 int ret;
 dsl_crypto_recv_key_arg_t *dcrka = arg;
 dsl_dataset_t *ds = ((void*)0), *fromds = ((void*)0);

 ret = dsl_dataset_hold_obj(tx->tx_pool, dcrka->dcrka_dsobj,
     FTAG, &ds);
 if (ret != 0)
  goto out;

 if (dcrka->dcrka_fromobj != 0) {
  ret = dsl_dataset_hold_obj(tx->tx_pool, dcrka->dcrka_fromobj,
      FTAG, &fromds);
  if (ret != 0)
   goto out;
 }

 ret = dsl_crypto_recv_raw_objset_check(ds, fromds,
     dcrka->dcrka_ostype, dcrka->dcrka_nvl, tx);
 if (ret != 0)
  goto out;






 ret = dsl_crypto_recv_raw_key_check(ds, dcrka->dcrka_nvl, tx);
 if (ret != 0)
  goto out;

out:
 if (ds != ((void*)0))
  dsl_dataset_rele(ds, FTAG);
 if (fromds != ((void*)0))
  dsl_dataset_rele(fromds, FTAG);
 return (ret);
}
