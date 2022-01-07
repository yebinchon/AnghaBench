
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_7__ {TYPE_1__* tx_pool; } ;
typedef TYPE_2__ dmu_tx_t ;
struct TYPE_6__ {int * dp_meta_objset; } ;


 int DSL_CRYPTO_KEY_REFCOUNT ;
 int VERIFY0 (int ) ;
 int zap_destroy (int *,int,TYPE_2__*) ;
 int zap_increment (int *,int,int ,int,TYPE_2__*) ;
 int zap_lookup (int *,int,int ,int,int,int*) ;

void
dsl_crypto_key_destroy_sync(uint64_t dckobj, dmu_tx_t *tx)
{
 objset_t *mos = tx->tx_pool->dp_meta_objset;
 uint64_t refcnt;


 VERIFY0(zap_lookup(mos, dckobj, DSL_CRYPTO_KEY_REFCOUNT,
     sizeof (uint64_t), 1, &refcnt));

 if (refcnt != 1) {
  VERIFY0(zap_increment(mos, dckobj, DSL_CRYPTO_KEY_REFCOUNT,
      -1, tx));
 } else {
  VERIFY0(zap_destroy(mos, dckobj, tx));
 }
}
