
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UnregisterXactCallback (int ,int *) ;
 int continuous_agg_xact_invalidation_callback ;

void
_continuous_aggs_cache_inval_fini(void)
{
 UnregisterXactCallback(continuous_agg_xact_invalidation_callback, ((void*)0));
}
