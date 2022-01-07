
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_9__ {int dd_crypto_obj; } ;
typedef TYPE_2__ dsl_dir_t ;
struct TYPE_10__ {TYPE_1__* tx_pool; } ;
typedef TYPE_3__ dmu_tx_t ;
struct TYPE_8__ {int * dp_meta_objset; } ;


 int ASSERT (int ) ;
 int DSL_CRYPTO_KEY_REFCOUNT ;
 int VERIFY0 (int ) ;
 int dmu_tx_is_syncing (TYPE_3__*) ;
 int zap_increment (int *,int ,int ,int,TYPE_3__*) ;

uint64_t
dsl_crypto_key_clone_sync(dsl_dir_t *origindd, dmu_tx_t *tx)
{
 objset_t *mos = tx->tx_pool->dp_meta_objset;

 ASSERT(dmu_tx_is_syncing(tx));

 VERIFY0(zap_increment(mos, origindd->dd_crypto_obj,
     DSL_CRYPTO_KEY_REFCOUNT, 1, tx));

 return (origindd->dd_crypto_obj);
}
