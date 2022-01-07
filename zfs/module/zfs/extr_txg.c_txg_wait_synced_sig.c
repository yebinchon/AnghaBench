
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dsl_pool_t ;
typedef int boolean_t ;


 int B_TRUE ;
 int txg_wait_synced_impl (int *,int ,int ) ;

boolean_t
txg_wait_synced_sig(dsl_pool_t *dp, uint64_t txg)
{
 return (txg_wait_synced_impl(dp, txg, B_TRUE));
}
