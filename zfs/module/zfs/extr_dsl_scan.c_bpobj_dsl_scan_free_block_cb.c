
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dmu_tx_t ;
typedef int boolean_t ;
typedef int blkptr_t ;


 int ASSERT (int) ;
 int dsl_scan_free_block_cb (void*,int const*,int *) ;

__attribute__((used)) static int
bpobj_dsl_scan_free_block_cb(void *arg, const blkptr_t *bp, boolean_t bp_freed,
    dmu_tx_t *tx)
{
 ASSERT(!bp_freed);
 return (dsl_scan_free_block_cb(arg, bp, tx));
}
