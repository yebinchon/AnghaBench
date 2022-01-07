
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dmu_tx_t ;
typedef int bplist_t ;
typedef int boolean_t ;
typedef int blkptr_t ;


 int bplist_append (int *,int const*) ;

int
bplist_append_cb(void *arg, const blkptr_t *bp, boolean_t bp_freed,
    dmu_tx_t *tx)
{
 bplist_t *bpl = arg;
 bplist_append(bpl, bp);
 return (0);
}
