
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dmu_tx_t ;
typedef int blkptr_t ;


 int B_FALSE ;
 int bpobj_enqueue_cb (void*,int const*,int ,int *) ;

int
bpobj_enqueue_alloc_cb(void *arg, const blkptr_t *bp, dmu_tx_t *tx)
{
 return (bpobj_enqueue_cb(arg, bp, B_FALSE, tx));
}
