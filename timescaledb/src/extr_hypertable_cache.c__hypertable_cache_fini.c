
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hypertable_cache_current ;
 int ts_cache_invalidate (int ) ;

void
_hypertable_cache_fini(void)
{
 ts_cache_invalidate(hypertable_cache_current);
}
