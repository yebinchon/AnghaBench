
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
struct TYPE_2__ {int drica_blk_birth; int * drica_tx; int * drica_os; } ;
typedef TYPE_1__ dbuf_remap_impl_callback_arg_t ;


 int ASSERT (int ) ;
 int dmu_objset_ds (int *) ;
 int * dmu_objset_spa (int *) ;
 int dsl_dataset_block_remapped (int ,int ,int ,int ,int ,int *) ;
 int dsl_pool_sync_context (int ) ;
 int spa_get_dsl (int *) ;
 int * spa_meta_objset (int *) ;
 int spa_vdev_indirect_mark_obsolete (int *,int ,int ,int ,int *) ;

__attribute__((used)) static void
dbuf_remap_impl_callback(uint64_t vdev, uint64_t offset, uint64_t size,
    void *arg)
{
 dbuf_remap_impl_callback_arg_t *drica = arg;
 objset_t *os = drica->drica_os;
 spa_t *spa = dmu_objset_spa(os);
 dmu_tx_t *tx = drica->drica_tx;

 ASSERT(dsl_pool_sync_context(spa_get_dsl(spa)));

 if (os == spa_meta_objset(spa)) {
  spa_vdev_indirect_mark_obsolete(spa, vdev, offset, size, tx);
 } else {
  dsl_dataset_block_remapped(dmu_objset_ds(os), vdev, offset,
      size, drica->drica_blk_birth, tx);
 }
}
