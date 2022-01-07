
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dsl_dataset_t ;
struct TYPE_6__ {int dcrka_nvl; scalar_t__ dcrka_do_key; int dcrka_ostype; int dcrka_dsobj; } ;
typedef TYPE_1__ dsl_crypto_recv_key_arg_t ;
struct TYPE_7__ {int tx_pool; } ;
typedef TYPE_2__ dmu_tx_t ;


 int FTAG ;
 int VERIFY0 (int ) ;
 int dsl_crypto_recv_raw_key_sync (int *,int ,TYPE_2__*) ;
 int dsl_crypto_recv_raw_objset_sync (int *,int ,int ,TYPE_2__*) ;
 int dsl_dataset_hold_obj (int ,int ,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;

void
dsl_crypto_recv_key_sync(void *arg, dmu_tx_t *tx)
{
 dsl_crypto_recv_key_arg_t *dcrka = arg;
 dsl_dataset_t *ds;

 VERIFY0(dsl_dataset_hold_obj(tx->tx_pool, dcrka->dcrka_dsobj,
     FTAG, &ds));
 dsl_crypto_recv_raw_objset_sync(ds, dcrka->dcrka_ostype,
     dcrka->dcrka_nvl, tx);
 if (dcrka->dcrka_do_key)
  dsl_crypto_recv_raw_key_sync(ds, dcrka->dcrka_nvl, tx);
 dsl_dataset_rele(ds, FTAG);
}
