
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct space_range_arg {scalar_t__ mintxg; scalar_t__ maxtxg; int uncomp; int comp; int spa; int used; } ;
typedef int dmu_tx_t ;
typedef int boolean_t ;
struct TYPE_7__ {scalar_t__ blk_birth; } ;
typedef TYPE_1__ blkptr_t ;


 scalar_t__ BP_GET_PSIZE (TYPE_1__ const*) ;
 scalar_t__ BP_GET_UCSIZE (TYPE_1__ const*) ;
 scalar_t__ bp_get_dsize (int ,TYPE_1__ const*) ;
 scalar_t__ bp_get_dsize_sync (int ,TYPE_1__ const*) ;
 scalar_t__ dsl_pool_sync_context (int ) ;
 int spa_get_dsl (int ) ;

__attribute__((used)) static int
space_range_cb(void *arg, const blkptr_t *bp, boolean_t bp_freed, dmu_tx_t *tx)
{
 struct space_range_arg *sra = arg;

 if (bp->blk_birth > sra->mintxg && bp->blk_birth <= sra->maxtxg) {
  if (dsl_pool_sync_context(spa_get_dsl(sra->spa)))
   sra->used += bp_get_dsize_sync(sra->spa, bp);
  else
   sra->used += bp_get_dsize(sra->spa, bp);
  sra->comp += BP_GET_PSIZE(bp);
  sra->uncomp += BP_GET_UCSIZE(bp);
 }
 return (0);
}
