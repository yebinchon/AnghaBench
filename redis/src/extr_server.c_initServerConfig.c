
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* runid; int arch_bits; int sofd; int active_expire_enabled; int jemalloc_bg_thread; int aof_rewrite_time_last; int aof_rewrite_time_start; int aof_fd; int aof_selected_db; int next_client_id; int loading_process_events_interval_bytes; int masterport; int master_initial_offset; int repl_transfer_fd; char* assert_failed; char* assert_file; int lua_always_replicate_commands; scalar_t__ watchdog_period; scalar_t__ bug_report_start; scalar_t__ assert_line; int tracking_table_max_fill; int latency_monitor_threshold; int slowlog_max_len; int slowlog_log_slower_than; void* xgroupCommand; void* xclaimCommand; void* pexpireCommand; void* expireCommand; void* execCommand; void* sremCommand; void* zpopmaxCommand; void* zpopminCommand; void* rpopCommand; void* lpopCommand; void* lpushCommand; void* multiCommand; void* delCommand; void* orig_commands; void* commands; int * client_obuf_limits; void* repl_no_slaves_since; int repl_backlog_time_limit; scalar_t__ repl_backlog_off; scalar_t__ repl_backlog_idx; scalar_t__ repl_backlog_histlen; int repl_backlog_size; int * repl_backlog; scalar_t__ master_repl_offset; int slave_announce_port; int slave_announce_ip; int slave_priority; int repl_min_slaves_max_lag; int repl_min_slaves_to_write; int repl_timeout; int repl_ping_slave_period; int repl_diskless_sync_delay; int repl_diskless_load; int repl_diskless_sync; int repl_disable_tcp_nodelay; scalar_t__ repl_down_since; int repl_slave_lazy_flush; int repl_slave_ignore_maxmemory; int repl_slave_ro; int repl_serve_stale_data; int repl_syncio_timeout; int * repl_transfer_s; int * repl_transfer_tmpfile; int repl_state; int * cached_master; int * master; int * masterhost; int * masterauth; int lruclock; int io_threads_do_reads; int io_threads_num; int lua_time_limit; int always_show_logo; int lazyfree_lazy_server_del; int lazyfree_lazy_expire; int lazyfree_lazy_eviction; void* migrate_cached_sockets; int cluster_module_flags; int cluster_announce_bus_port; int cluster_announce_port; int cluster_announce_ip; void* cluster_configfile; int cluster_slave_no_failover; int cluster_require_full_coverage; int cluster_slave_validity_factor; int cluster_migration_barrier; int cluster_node_timeout; scalar_t__ cluster_enabled; scalar_t__ shutdown_asap; int stream_node_max_entries; int stream_node_max_bytes; int hll_sparse_max_bytes; int zset_max_ziplist_value; int zset_max_ziplist_entries; int set_max_intset_entries; int list_compress_depth; int list_max_ziplist_size; int hash_max_ziplist_value; int hash_max_ziplist_entries; int lfu_decay_time; int lfu_log_factor; int maxmemory_samples; int maxmemory_policy; int maxmemory; int blocked_clients_by_type; scalar_t__ blocked_clients; int maxclients; scalar_t__ notify_keyspace_events; scalar_t__ active_defrag_running; int activerehashing; int stop_writes_on_bgsave_err; int rdb_checksum; int rdb_compression; void* acl_filename; void* aof_filename; void* rdb_filename; int * pidfile; int aof_use_rdb_preamble; int aof_load_truncated; int key_load_delay; int rdb_key_save_delay; int rdb_save_incremental_fsync; int aof_rewrite_incremental_fsync; scalar_t__ aof_flush_postponed_start; scalar_t__ aof_delayed_fsync; int aof_lastbgrewrite_status; void* aof_last_fsync; scalar_t__ aof_flush_sleep; scalar_t__ aof_rewrite_scheduled; scalar_t__ aof_rewrite_base_size; int aof_rewrite_min_size; int aof_rewrite_perc; int aof_no_fsync_on_rewrite; int aof_fsync; int aof_state; int supervised_mode; scalar_t__ supervised; int daemonize; int syslog_facility; void* syslog_ident; int syslog_enabled; void* logfile; scalar_t__ loading; int * saveparams; int client_max_querybuf_len; int proto_max_bulk_len; int active_defrag_max_scan_fields; int active_defrag_cycle_max; int active_defrag_cycle_min; int active_defrag_threshold_upper; int active_defrag_threshold_lower; int active_defrag_ignore_bytes; int active_defrag_enabled; int tcpkeepalive; int maxidletime; int verbosity; int dbnum; int gopher_enabled; int protected_mode; scalar_t__ tlsfd_count; scalar_t__ ipfd_count; int unixsocketperm; int * unixsocket; scalar_t__ bindaddr_count; int tcp_backlog; int tls_port; int port; int dynamic_hz; int config_hz; int hz; int * executable; int * configfile; int timezone; } ;


 int AOF_OFF ;
 int AOF_REWRITE_MIN_SIZE ;
 int AOF_REWRITE_PERC ;
 int CLIENT_TYPE_OBUF_COUNT ;
 int CLUSTER_DEFAULT_MIGRATION_BARRIER ;
 int CLUSTER_DEFAULT_NODE_TIMEOUT ;
 int CLUSTER_DEFAULT_REQUIRE_FULL_COVERAGE ;
 int CLUSTER_DEFAULT_SLAVE_NO_FAILOVER ;
 int CLUSTER_DEFAULT_SLAVE_VALIDITY ;
 int CLUSTER_MODULE_FLAG_NONE ;
 int CONFIG_DEFAULT_ACL_FILENAME ;
 int CONFIG_DEFAULT_ACTIVE_DEFRAG ;
 int CONFIG_DEFAULT_ACTIVE_REHASHING ;
 int CONFIG_DEFAULT_ALWAYS_SHOW_LOGO ;
 int CONFIG_DEFAULT_AOF_FILENAME ;
 int CONFIG_DEFAULT_AOF_FSYNC ;
 int CONFIG_DEFAULT_AOF_LOAD_TRUNCATED ;
 int CONFIG_DEFAULT_AOF_NO_FSYNC_ON_REWRITE ;
 int CONFIG_DEFAULT_AOF_REWRITE_INCREMENTAL_FSYNC ;
 int CONFIG_DEFAULT_AOF_USE_RDB_PREAMBLE ;
 int CONFIG_DEFAULT_CLIENT_TIMEOUT ;
 int CONFIG_DEFAULT_CLUSTER_ANNOUNCE_BUS_PORT ;
 int CONFIG_DEFAULT_CLUSTER_ANNOUNCE_IP ;
 int CONFIG_DEFAULT_CLUSTER_ANNOUNCE_PORT ;
 int CONFIG_DEFAULT_CLUSTER_CONFIG_FILE ;
 int CONFIG_DEFAULT_DAEMONIZE ;
 int CONFIG_DEFAULT_DBNUM ;
 int CONFIG_DEFAULT_DEFRAG_CYCLE_MAX ;
 int CONFIG_DEFAULT_DEFRAG_CYCLE_MIN ;
 int CONFIG_DEFAULT_DEFRAG_IGNORE_BYTES ;
 int CONFIG_DEFAULT_DEFRAG_MAX_SCAN_FIELDS ;
 int CONFIG_DEFAULT_DEFRAG_THRESHOLD_LOWER ;
 int CONFIG_DEFAULT_DEFRAG_THRESHOLD_UPPER ;
 int CONFIG_DEFAULT_DYNAMIC_HZ ;
 int CONFIG_DEFAULT_GOPHER_ENABLED ;
 int CONFIG_DEFAULT_HLL_SPARSE_MAX_BYTES ;
 int CONFIG_DEFAULT_HZ ;
 int CONFIG_DEFAULT_IO_THREADS_DO_READS ;
 int CONFIG_DEFAULT_IO_THREADS_NUM ;
 int CONFIG_DEFAULT_KEY_LOAD_DELAY ;
 int CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD ;
 int CONFIG_DEFAULT_LAZYFREE_LAZY_EVICTION ;
 int CONFIG_DEFAULT_LAZYFREE_LAZY_EXPIRE ;
 int CONFIG_DEFAULT_LAZYFREE_LAZY_SERVER_DEL ;
 int CONFIG_DEFAULT_LFU_DECAY_TIME ;
 int CONFIG_DEFAULT_LFU_LOG_FACTOR ;
 int CONFIG_DEFAULT_LOGFILE ;
 int CONFIG_DEFAULT_MAXMEMORY ;
 int CONFIG_DEFAULT_MAXMEMORY_POLICY ;
 int CONFIG_DEFAULT_MAXMEMORY_SAMPLES ;
 int CONFIG_DEFAULT_MAX_CLIENTS ;
 int CONFIG_DEFAULT_MIN_SLAVES_MAX_LAG ;
 int CONFIG_DEFAULT_MIN_SLAVES_TO_WRITE ;
 int CONFIG_DEFAULT_PROTECTED_MODE ;
 int CONFIG_DEFAULT_PROTO_MAX_BULK_LEN ;
 int CONFIG_DEFAULT_RDB_CHECKSUM ;
 int CONFIG_DEFAULT_RDB_COMPRESSION ;
 int CONFIG_DEFAULT_RDB_FILENAME ;
 int CONFIG_DEFAULT_RDB_KEY_SAVE_DELAY ;
 int CONFIG_DEFAULT_RDB_SAVE_INCREMENTAL_FSYNC ;
 int CONFIG_DEFAULT_REPL_BACKLOG_SIZE ;
 int CONFIG_DEFAULT_REPL_BACKLOG_TIME_LIMIT ;
 int CONFIG_DEFAULT_REPL_DISABLE_TCP_NODELAY ;
 int CONFIG_DEFAULT_REPL_DISKLESS_LOAD ;
 int CONFIG_DEFAULT_REPL_DISKLESS_SYNC ;
 int CONFIG_DEFAULT_REPL_DISKLESS_SYNC_DELAY ;
 int CONFIG_DEFAULT_REPL_PING_SLAVE_PERIOD ;
 int CONFIG_DEFAULT_REPL_TIMEOUT ;
 int CONFIG_DEFAULT_SERVER_PORT ;
 int CONFIG_DEFAULT_SERVER_TLS_PORT ;
 int CONFIG_DEFAULT_SLAVE_ANNOUNCE_IP ;
 int CONFIG_DEFAULT_SLAVE_ANNOUNCE_PORT ;
 int CONFIG_DEFAULT_SLAVE_IGNORE_MAXMEMORY ;
 int CONFIG_DEFAULT_SLAVE_LAZY_FLUSH ;
 int CONFIG_DEFAULT_SLAVE_PRIORITY ;
 int CONFIG_DEFAULT_SLAVE_READ_ONLY ;
 int CONFIG_DEFAULT_SLAVE_SERVE_STALE_DATA ;
 int CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN ;
 int CONFIG_DEFAULT_SLOWLOG_MAX_LEN ;
 int CONFIG_DEFAULT_STOP_WRITES_ON_BGSAVE_ERROR ;
 int CONFIG_DEFAULT_SYSLOG_ENABLED ;
 int CONFIG_DEFAULT_SYSLOG_IDENT ;
 int CONFIG_DEFAULT_TCP_BACKLOG ;
 int CONFIG_DEFAULT_TCP_KEEPALIVE ;
 int CONFIG_DEFAULT_TRACKING_TABLE_MAX_FILL ;
 int CONFIG_DEFAULT_UNIX_SOCKET_PERM ;
 int CONFIG_DEFAULT_VERBOSITY ;
 int CONFIG_REPL_SYNCIO_TIMEOUT ;
 size_t CONFIG_RUN_ID_SIZE ;
 int C_OK ;
 int LOG_LOCAL0 ;
 int LUA_SCRIPT_TIME_LIMIT ;
 int OBJ_HASH_MAX_ZIPLIST_ENTRIES ;
 int OBJ_HASH_MAX_ZIPLIST_VALUE ;
 int OBJ_LIST_COMPRESS_DEPTH ;
 int OBJ_LIST_MAX_ZIPLIST_SIZE ;
 int OBJ_SET_MAX_INTSET_ENTRIES ;
 int OBJ_STREAM_NODE_MAX_BYTES ;
 int OBJ_STREAM_NODE_MAX_ENTRIES ;
 int OBJ_ZSET_MAX_ZIPLIST_ENTRIES ;
 int OBJ_ZSET_MAX_ZIPLIST_VALUE ;
 int PROTO_MAX_QUERYBUF_LEN ;
 int REPL_STATE_NONE ;
 double R_Nan ;
 double R_NegInf ;
 double R_PosInf ;
 double R_Zero ;
 int SUPERVISED_NONE ;
 int appendServerSaveParams (int,int) ;
 int changeReplicationId () ;
 int clearReplicationId2 () ;
 int * clientBufferLimitsDefaults ;
 int commandTableDictType ;
 void* dictCreate (int *,int *) ;
 int getLRUClock () ;
 int getRandomHexChars (char*,size_t) ;
 int getTimeZone () ;
 void* lookupCommandByCString (char*) ;
 int memset (int ,int ,int) ;
 int migrateCacheDictType ;
 int populateCommandTable () ;
 int resetServerSaveParams () ;
 TYPE_1__ server ;
 void* time (int *) ;
 int updateCachedTime (int) ;
 void* zstrdup (int ) ;

void initServerConfig(void) {
    int j;

    updateCachedTime(1);
    getRandomHexChars(server.runid,CONFIG_RUN_ID_SIZE);
    server.runid[CONFIG_RUN_ID_SIZE] = '\0';
    changeReplicationId();
    clearReplicationId2();
    server.timezone = getTimeZone();
    server.configfile = ((void*)0);
    server.executable = ((void*)0);
    server.hz = server.config_hz = CONFIG_DEFAULT_HZ;
    server.dynamic_hz = CONFIG_DEFAULT_DYNAMIC_HZ;
    server.arch_bits = (sizeof(long) == 8) ? 64 : 32;
    server.port = CONFIG_DEFAULT_SERVER_PORT;
    server.tls_port = CONFIG_DEFAULT_SERVER_TLS_PORT;
    server.tcp_backlog = CONFIG_DEFAULT_TCP_BACKLOG;
    server.bindaddr_count = 0;
    server.unixsocket = ((void*)0);
    server.unixsocketperm = CONFIG_DEFAULT_UNIX_SOCKET_PERM;
    server.ipfd_count = 0;
    server.tlsfd_count = 0;
    server.sofd = -1;
    server.protected_mode = CONFIG_DEFAULT_PROTECTED_MODE;
    server.gopher_enabled = CONFIG_DEFAULT_GOPHER_ENABLED;
    server.dbnum = CONFIG_DEFAULT_DBNUM;
    server.verbosity = CONFIG_DEFAULT_VERBOSITY;
    server.maxidletime = CONFIG_DEFAULT_CLIENT_TIMEOUT;
    server.tcpkeepalive = CONFIG_DEFAULT_TCP_KEEPALIVE;
    server.active_expire_enabled = 1;
    server.jemalloc_bg_thread = 1;
    server.active_defrag_enabled = CONFIG_DEFAULT_ACTIVE_DEFRAG;
    server.active_defrag_ignore_bytes = CONFIG_DEFAULT_DEFRAG_IGNORE_BYTES;
    server.active_defrag_threshold_lower = CONFIG_DEFAULT_DEFRAG_THRESHOLD_LOWER;
    server.active_defrag_threshold_upper = CONFIG_DEFAULT_DEFRAG_THRESHOLD_UPPER;
    server.active_defrag_cycle_min = CONFIG_DEFAULT_DEFRAG_CYCLE_MIN;
    server.active_defrag_cycle_max = CONFIG_DEFAULT_DEFRAG_CYCLE_MAX;
    server.active_defrag_max_scan_fields = CONFIG_DEFAULT_DEFRAG_MAX_SCAN_FIELDS;
    server.proto_max_bulk_len = CONFIG_DEFAULT_PROTO_MAX_BULK_LEN;
    server.client_max_querybuf_len = PROTO_MAX_QUERYBUF_LEN;
    server.saveparams = ((void*)0);
    server.loading = 0;
    server.logfile = zstrdup(CONFIG_DEFAULT_LOGFILE);
    server.syslog_enabled = CONFIG_DEFAULT_SYSLOG_ENABLED;
    server.syslog_ident = zstrdup(CONFIG_DEFAULT_SYSLOG_IDENT);
    server.syslog_facility = LOG_LOCAL0;
    server.daemonize = CONFIG_DEFAULT_DAEMONIZE;
    server.supervised = 0;
    server.supervised_mode = SUPERVISED_NONE;
    server.aof_state = AOF_OFF;
    server.aof_fsync = CONFIG_DEFAULT_AOF_FSYNC;
    server.aof_no_fsync_on_rewrite = CONFIG_DEFAULT_AOF_NO_FSYNC_ON_REWRITE;
    server.aof_rewrite_perc = AOF_REWRITE_PERC;
    server.aof_rewrite_min_size = AOF_REWRITE_MIN_SIZE;
    server.aof_rewrite_base_size = 0;
    server.aof_rewrite_scheduled = 0;
    server.aof_flush_sleep = 0;
    server.aof_last_fsync = time(((void*)0));
    server.aof_rewrite_time_last = -1;
    server.aof_rewrite_time_start = -1;
    server.aof_lastbgrewrite_status = C_OK;
    server.aof_delayed_fsync = 0;
    server.aof_fd = -1;
    server.aof_selected_db = -1;
    server.aof_flush_postponed_start = 0;
    server.aof_rewrite_incremental_fsync = CONFIG_DEFAULT_AOF_REWRITE_INCREMENTAL_FSYNC;
    server.rdb_save_incremental_fsync = CONFIG_DEFAULT_RDB_SAVE_INCREMENTAL_FSYNC;
    server.rdb_key_save_delay = CONFIG_DEFAULT_RDB_KEY_SAVE_DELAY;
    server.key_load_delay = CONFIG_DEFAULT_KEY_LOAD_DELAY;
    server.aof_load_truncated = CONFIG_DEFAULT_AOF_LOAD_TRUNCATED;
    server.aof_use_rdb_preamble = CONFIG_DEFAULT_AOF_USE_RDB_PREAMBLE;
    server.pidfile = ((void*)0);
    server.rdb_filename = zstrdup(CONFIG_DEFAULT_RDB_FILENAME);
    server.aof_filename = zstrdup(CONFIG_DEFAULT_AOF_FILENAME);
    server.acl_filename = zstrdup(CONFIG_DEFAULT_ACL_FILENAME);
    server.rdb_compression = CONFIG_DEFAULT_RDB_COMPRESSION;
    server.rdb_checksum = CONFIG_DEFAULT_RDB_CHECKSUM;
    server.stop_writes_on_bgsave_err = CONFIG_DEFAULT_STOP_WRITES_ON_BGSAVE_ERROR;
    server.activerehashing = CONFIG_DEFAULT_ACTIVE_REHASHING;
    server.active_defrag_running = 0;
    server.notify_keyspace_events = 0;
    server.maxclients = CONFIG_DEFAULT_MAX_CLIENTS;
    server.blocked_clients = 0;
    memset(server.blocked_clients_by_type,0,
           sizeof(server.blocked_clients_by_type));
    server.maxmemory = CONFIG_DEFAULT_MAXMEMORY;
    server.maxmemory_policy = CONFIG_DEFAULT_MAXMEMORY_POLICY;
    server.maxmemory_samples = CONFIG_DEFAULT_MAXMEMORY_SAMPLES;
    server.lfu_log_factor = CONFIG_DEFAULT_LFU_LOG_FACTOR;
    server.lfu_decay_time = CONFIG_DEFAULT_LFU_DECAY_TIME;
    server.hash_max_ziplist_entries = OBJ_HASH_MAX_ZIPLIST_ENTRIES;
    server.hash_max_ziplist_value = OBJ_HASH_MAX_ZIPLIST_VALUE;
    server.list_max_ziplist_size = OBJ_LIST_MAX_ZIPLIST_SIZE;
    server.list_compress_depth = OBJ_LIST_COMPRESS_DEPTH;
    server.set_max_intset_entries = OBJ_SET_MAX_INTSET_ENTRIES;
    server.zset_max_ziplist_entries = OBJ_ZSET_MAX_ZIPLIST_ENTRIES;
    server.zset_max_ziplist_value = OBJ_ZSET_MAX_ZIPLIST_VALUE;
    server.hll_sparse_max_bytes = CONFIG_DEFAULT_HLL_SPARSE_MAX_BYTES;
    server.stream_node_max_bytes = OBJ_STREAM_NODE_MAX_BYTES;
    server.stream_node_max_entries = OBJ_STREAM_NODE_MAX_ENTRIES;
    server.shutdown_asap = 0;
    server.cluster_enabled = 0;
    server.cluster_node_timeout = CLUSTER_DEFAULT_NODE_TIMEOUT;
    server.cluster_migration_barrier = CLUSTER_DEFAULT_MIGRATION_BARRIER;
    server.cluster_slave_validity_factor = CLUSTER_DEFAULT_SLAVE_VALIDITY;
    server.cluster_require_full_coverage = CLUSTER_DEFAULT_REQUIRE_FULL_COVERAGE;
    server.cluster_slave_no_failover = CLUSTER_DEFAULT_SLAVE_NO_FAILOVER;
    server.cluster_configfile = zstrdup(CONFIG_DEFAULT_CLUSTER_CONFIG_FILE);
    server.cluster_announce_ip = CONFIG_DEFAULT_CLUSTER_ANNOUNCE_IP;
    server.cluster_announce_port = CONFIG_DEFAULT_CLUSTER_ANNOUNCE_PORT;
    server.cluster_announce_bus_port = CONFIG_DEFAULT_CLUSTER_ANNOUNCE_BUS_PORT;
    server.cluster_module_flags = CLUSTER_MODULE_FLAG_NONE;
    server.migrate_cached_sockets = dictCreate(&migrateCacheDictType,((void*)0));
    server.next_client_id = 1;
    server.loading_process_events_interval_bytes = (1024*1024*2);
    server.lazyfree_lazy_eviction = CONFIG_DEFAULT_LAZYFREE_LAZY_EVICTION;
    server.lazyfree_lazy_expire = CONFIG_DEFAULT_LAZYFREE_LAZY_EXPIRE;
    server.lazyfree_lazy_server_del = CONFIG_DEFAULT_LAZYFREE_LAZY_SERVER_DEL;
    server.always_show_logo = CONFIG_DEFAULT_ALWAYS_SHOW_LOGO;
    server.lua_time_limit = LUA_SCRIPT_TIME_LIMIT;
    server.io_threads_num = CONFIG_DEFAULT_IO_THREADS_NUM;
    server.io_threads_do_reads = CONFIG_DEFAULT_IO_THREADS_DO_READS;

    server.lruclock = getLRUClock();
    resetServerSaveParams();

    appendServerSaveParams(60*60,1);
    appendServerSaveParams(300,100);
    appendServerSaveParams(60,10000);


    server.masterauth = ((void*)0);
    server.masterhost = ((void*)0);
    server.masterport = 6379;
    server.master = ((void*)0);
    server.cached_master = ((void*)0);
    server.master_initial_offset = -1;
    server.repl_state = REPL_STATE_NONE;
    server.repl_transfer_tmpfile = ((void*)0);
    server.repl_transfer_fd = -1;
    server.repl_transfer_s = ((void*)0);
    server.repl_syncio_timeout = CONFIG_REPL_SYNCIO_TIMEOUT;
    server.repl_serve_stale_data = CONFIG_DEFAULT_SLAVE_SERVE_STALE_DATA;
    server.repl_slave_ro = CONFIG_DEFAULT_SLAVE_READ_ONLY;
    server.repl_slave_ignore_maxmemory = CONFIG_DEFAULT_SLAVE_IGNORE_MAXMEMORY;
    server.repl_slave_lazy_flush = CONFIG_DEFAULT_SLAVE_LAZY_FLUSH;
    server.repl_down_since = 0;
    server.repl_disable_tcp_nodelay = CONFIG_DEFAULT_REPL_DISABLE_TCP_NODELAY;
    server.repl_diskless_sync = CONFIG_DEFAULT_REPL_DISKLESS_SYNC;
    server.repl_diskless_load = CONFIG_DEFAULT_REPL_DISKLESS_LOAD;
    server.repl_diskless_sync_delay = CONFIG_DEFAULT_REPL_DISKLESS_SYNC_DELAY;
    server.repl_ping_slave_period = CONFIG_DEFAULT_REPL_PING_SLAVE_PERIOD;
    server.repl_timeout = CONFIG_DEFAULT_REPL_TIMEOUT;
    server.repl_min_slaves_to_write = CONFIG_DEFAULT_MIN_SLAVES_TO_WRITE;
    server.repl_min_slaves_max_lag = CONFIG_DEFAULT_MIN_SLAVES_MAX_LAG;
    server.slave_priority = CONFIG_DEFAULT_SLAVE_PRIORITY;
    server.slave_announce_ip = CONFIG_DEFAULT_SLAVE_ANNOUNCE_IP;
    server.slave_announce_port = CONFIG_DEFAULT_SLAVE_ANNOUNCE_PORT;
    server.master_repl_offset = 0;


    server.repl_backlog = ((void*)0);
    server.repl_backlog_size = CONFIG_DEFAULT_REPL_BACKLOG_SIZE;
    server.repl_backlog_histlen = 0;
    server.repl_backlog_idx = 0;
    server.repl_backlog_off = 0;
    server.repl_backlog_time_limit = CONFIG_DEFAULT_REPL_BACKLOG_TIME_LIMIT;
    server.repl_no_slaves_since = time(((void*)0));


    for (j = 0; j < CLIENT_TYPE_OBUF_COUNT; j++)
        server.client_obuf_limits[j] = clientBufferLimitsDefaults[j];


    R_Zero = 0.0;
    R_PosInf = 1.0/R_Zero;
    R_NegInf = -1.0/R_Zero;
    R_Nan = R_Zero/R_Zero;




    server.commands = dictCreate(&commandTableDictType,((void*)0));
    server.orig_commands = dictCreate(&commandTableDictType,((void*)0));
    populateCommandTable();
    server.delCommand = lookupCommandByCString("del");
    server.multiCommand = lookupCommandByCString("multi");
    server.lpushCommand = lookupCommandByCString("lpush");
    server.lpopCommand = lookupCommandByCString("lpop");
    server.rpopCommand = lookupCommandByCString("rpop");
    server.zpopminCommand = lookupCommandByCString("zpopmin");
    server.zpopmaxCommand = lookupCommandByCString("zpopmax");
    server.sremCommand = lookupCommandByCString("srem");
    server.execCommand = lookupCommandByCString("exec");
    server.expireCommand = lookupCommandByCString("expire");
    server.pexpireCommand = lookupCommandByCString("pexpire");
    server.xclaimCommand = lookupCommandByCString("xclaim");
    server.xgroupCommand = lookupCommandByCString("xgroup");


    server.slowlog_log_slower_than = CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN;
    server.slowlog_max_len = CONFIG_DEFAULT_SLOWLOG_MAX_LEN;


    server.latency_monitor_threshold = CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD;


    server.tracking_table_max_fill = CONFIG_DEFAULT_TRACKING_TABLE_MAX_FILL;


    server.assert_failed = "<no assertion failed>";
    server.assert_file = "<no file>";
    server.assert_line = 0;
    server.bug_report_start = 0;
    server.watchdog_period = 0;





    server.lua_always_replicate_commands = 1;
}
