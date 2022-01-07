
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zl_dmu_pool; int zl_os; int zl_spa; int zl_destroy_txg; TYPE_2__* zl_header; } ;
typedef TYPE_1__ zilog_t ;
struct TYPE_7__ {scalar_t__ zh_claim_txg; scalar_t__ zh_replay_seq; int zh_log; } ;
typedef TYPE_2__ zil_header_t ;
typedef int uint64_t ;
typedef int lwb_t ;
typedef int dmu_tx_t ;
typedef int boolean_t ;
typedef int blkptr_t ;
typedef int blk ;


 int ASSERT (int) ;
 scalar_t__ BP_IS_HOLE (int *) ;
 scalar_t__ BP_SHOULD_BYTESWAP (int *) ;
 int BP_ZERO (int *) ;
 int FALSE ;
 int IMPLY (int,int ) ;
 int TRUE ;
 int TXG_WAIT ;
 int VERIFY0 (int ) ;
 int ZIL_MIN_BLKSZ ;
 scalar_t__ bcmp (int *,int *,int) ;
 int dmu_objset_ds (int ) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int ) ;
 int dmu_tx_get_txg (int *) ;
 int dsl_dataset_dirty (int ,int *) ;
 int txg_wait_synced (int ,int ) ;
 int * zil_alloc_lwb (TYPE_1__*,int *,int ,int ,int ) ;
 int zil_init_log_chain (TYPE_1__*,int *) ;
 int zio_alloc_zil (int ,int ,int ,int *,int ,int *) ;
 int zio_free (int ,int ,int *) ;

__attribute__((used)) static lwb_t *
zil_create(zilog_t *zilog)
{
 const zil_header_t *zh = zilog->zl_header;
 lwb_t *lwb = ((void*)0);
 uint64_t txg = 0;
 dmu_tx_t *tx = ((void*)0);
 blkptr_t blk;
 int error = 0;
 boolean_t fastwrite = FALSE;
 boolean_t slog = FALSE;




 txg_wait_synced(zilog->zl_dmu_pool, zilog->zl_destroy_txg);

 ASSERT(zh->zh_claim_txg == 0);
 ASSERT(zh->zh_replay_seq == 0);

 blk = zh->zh_log;






 if (BP_IS_HOLE(&blk) || BP_SHOULD_BYTESWAP(&blk)) {
  tx = dmu_tx_create(zilog->zl_os);
  VERIFY0(dmu_tx_assign(tx, TXG_WAIT));
  dsl_dataset_dirty(dmu_objset_ds(zilog->zl_os), tx);
  txg = dmu_tx_get_txg(tx);

  if (!BP_IS_HOLE(&blk)) {
   zio_free(zilog->zl_spa, txg, &blk);
   BP_ZERO(&blk);
  }

  error = zio_alloc_zil(zilog->zl_spa, zilog->zl_os, txg, &blk,
      ZIL_MIN_BLKSZ, &slog);
  fastwrite = TRUE;

  if (error == 0)
   zil_init_log_chain(zilog, &blk);
 }




 if (error == 0)
  lwb = zil_alloc_lwb(zilog, &blk, slog, txg, fastwrite);






 if (tx != ((void*)0)) {
  dmu_tx_commit(tx);
  txg_wait_synced(zilog->zl_dmu_pool, txg);
 }

 ASSERT(error != 0 || bcmp(&blk, &zh->zh_log, sizeof (blk)) == 0);
 IMPLY(error == 0, lwb != ((void*)0));

 return (lwb);
}
