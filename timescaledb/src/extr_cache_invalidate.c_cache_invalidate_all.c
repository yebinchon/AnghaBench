
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ts_hypertable_cache_invalidate_callback () ;

__attribute__((used)) static void
cache_invalidate_all(void)
{
 ts_hypertable_cache_invalidate_callback();
}
