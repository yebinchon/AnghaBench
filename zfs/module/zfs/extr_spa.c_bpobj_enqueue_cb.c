
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dmu_tx_t ;
typedef int bpobj_t ;
typedef int boolean_t ;
typedef int blkptr_t ;


 int bpobj_enqueue (int *,int const*,int ,int *) ;

__attribute__((used)) static int
bpobj_enqueue_cb(void *arg, const blkptr_t *bp, boolean_t bp_freed,
    dmu_tx_t *tx)
{
 bpobj_t *bpo = arg;
 bpobj_enqueue(bpo, bp, bp_freed, tx);
 return (0);
}
