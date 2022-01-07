
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int allocs; int frees; } ;
typedef TYPE_1__ livelist_new_arg_t ;
typedef int dmu_tx_t ;
typedef scalar_t__ boolean_t ;
typedef int blkptr_t ;


 int ASSERT (int ) ;
 int bplist_append (int ,int const*) ;
 int zfs_livelist_condense_new_alloc ;

__attribute__((used)) static int
livelist_track_new_cb(void *arg, const blkptr_t *bp, boolean_t bp_freed,
    dmu_tx_t *tx)
{
 ASSERT(tx == ((void*)0));
 livelist_new_arg_t *lna = arg;
 if (bp_freed) {
  bplist_append(lna->frees, bp);
 } else {
  bplist_append(lna->allocs, bp);
  zfs_livelist_condense_new_alloc++;
 }
 return (0);
}
