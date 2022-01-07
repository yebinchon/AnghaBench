
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsl_deadlist_t ;
typedef int dmu_tx_t ;
typedef int blkptr_t ;


 int B_TRUE ;
 int dsl_deadlist_insert (int *,int const*,int ,int *) ;

int
dsl_deadlist_insert_free_cb(void *arg, const blkptr_t *bp, dmu_tx_t *tx)
{
 dsl_deadlist_t *dl = arg;
 dsl_deadlist_insert(dl, bp, B_TRUE, tx);
 return (0);
}
