
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreateCacheMemoryContext () ;
 int hypertable_cache_create () ;
 int hypertable_cache_current ;

void
_hypertable_cache_init(void)
{
 CreateCacheMemoryContext();
 hypertable_cache_current = hypertable_cache_create();
}
