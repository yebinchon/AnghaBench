
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMESCALEDB_VERSION_MOD ;
 int _cache_init () ;
 int _cache_invalidate_init () ;
 int _chunk_append_init () ;
 int _conn_mock_init () ;
 int _conn_plain_init () ;
 int _conn_ssl_init () ;
 int _constraint_aware_append_init () ;
 int _event_trigger_init () ;
 int _guc_init () ;
 int _hypertable_cache_init () ;
 int _planner_init () ;
 int _process_utility_init () ;
 int ts_bgw_check_loader_api_version () ;
 int ts_extension_check_server_version () ;
 int ts_extension_check_version (int ) ;

void
_PG_init(void)
{




 ts_extension_check_version(TIMESCALEDB_VERSION_MOD);
 ts_extension_check_server_version();
 ts_bgw_check_loader_api_version();

 _cache_init();
 _hypertable_cache_init();
 _cache_invalidate_init();
 _planner_init();
 _constraint_aware_append_init();
 _chunk_append_init();
 _event_trigger_init();
 _process_utility_init();
 _guc_init();
 _conn_plain_init();






}
