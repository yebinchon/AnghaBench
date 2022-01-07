
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int zl_spa; } ;
typedef TYPE_1__ zilog_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_10__ {scalar_t__ blk_birth; } ;
typedef TYPE_2__ blkptr_t ;


 int ASSERT (int) ;
 int BP_IS_HOLE (TYPE_2__*) ;
 scalar_t__ zil_bp_tree_add (TYPE_1__*,TYPE_2__*) ;
 int zio_free (int ,scalar_t__,TYPE_2__*) ;

__attribute__((used)) static int
zil_clear_log_block(zilog_t *zilog, blkptr_t *bp, void *tx, uint64_t first_txg)
{
 ASSERT(!BP_IS_HOLE(bp));







 if (bp->blk_birth >= first_txg)
  return (-1);

 if (zil_bp_tree_add(zilog, bp) != 0)
  return (0);

 zio_free(zilog->zl_spa, first_txg, bp);
 return (0);
}
