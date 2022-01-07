
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _cache_fini () ;
 int _cache_invalidate_fini () ;
 int _conn_mock_fini () ;
 int _conn_plain_fini () ;
 int _conn_ssl_fini () ;
 int _event_trigger_fini () ;
 int _guc_fini () ;
 int _hypertable_cache_fini () ;
 int _planner_fini () ;
 int _process_utility_fini () ;

void
_PG_fini(void)
{
 _conn_plain_fini();
 _guc_fini();
 _process_utility_fini();
 _event_trigger_fini();
 _planner_fini();
 _cache_invalidate_fini();
 _hypertable_cache_fini();
 _cache_fini();
}
