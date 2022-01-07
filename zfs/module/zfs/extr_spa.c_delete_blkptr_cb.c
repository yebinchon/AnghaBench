
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int spa_t ;
struct TYPE_6__ {TYPE_1__* tx_pool; int tx_txg; } ;
typedef TYPE_2__ dmu_tx_t ;
typedef int blkptr_t ;
struct TYPE_5__ {int dp_free_dir; } ;


 int BP_GET_PSIZE (int const*) ;
 int BP_GET_UCSIZE (int const*) ;
 int DD_USED_HEAD ;
 int bp_get_dsize_sync (int *,int const*) ;
 int dsl_dir_diduse_space (int ,int ,int ,int ,int ,TYPE_2__*) ;
 int zio_free (int *,int ,int const*) ;

__attribute__((used)) static int
delete_blkptr_cb(void *arg, const blkptr_t *bp, dmu_tx_t *tx)
{
 spa_t *spa = arg;
 zio_free(spa, tx->tx_txg, bp);
 dsl_dir_diduse_space(tx->tx_pool->dp_free_dir, DD_USED_HEAD,
     -bp_get_dsize_sync(spa, bp),
     -BP_GET_PSIZE(bp), -BP_GET_UCSIZE(bp), tx);
 return (0);
}
