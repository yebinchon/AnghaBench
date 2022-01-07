
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rewriteConfigState {int dummy; } ;
typedef int sds ;
struct TYPE_6__ {char* name; int default_value; int * config; } ;
typedef TYPE_2__ configYesNo ;
struct TYPE_5__ {int prefer_server_ciphers; int ciphersuites; int ciphers; int protocols; int ca_cert_dir; int ca_cert_file; int dh_params_file; int key_file; int cert_file; } ;
struct TYPE_7__ {int configfile; scalar_t__ sentinel_mode; TYPE_1__ tls_ctx_config; int tls_auth_clients; int tls_replication; int tls_cluster; int key_load_delay; int rdb_key_save_delay; int supervised_mode; int config_hz; int active_defrag_enabled; int hll_sparse_max_bytes; int zset_max_ziplist_value; int zset_max_ziplist_entries; int set_max_intset_entries; int list_compress_depth; int list_max_ziplist_size; int stream_node_max_entries; int stream_node_max_bytes; int hash_max_ziplist_value; int hash_max_ziplist_entries; int tracking_table_max_fill; int slowlog_max_len; int latency_monitor_threshold; int slowlog_log_slower_than; int cluster_slave_validity_factor; int cluster_migration_barrier; int cluster_node_timeout; int cluster_configfile; int cluster_enabled; int lua_time_limit; int aof_rewrite_min_size; int aof_rewrite_perc; int aof_fsync; int aof_filename; int aof_enabled; int active_defrag_max_scan_fields; int active_defrag_cycle_max; int active_defrag_cycle_min; int active_defrag_ignore_bytes; int active_defrag_threshold_upper; int active_defrag_threshold_lower; int lfu_decay_time; int lfu_log_factor; int maxmemory_samples; int maxmemory_policy; int client_max_querybuf_len; int proto_max_bulk_len; int maxmemory; int maxclients; int repl_min_slaves_max_lag; int repl_min_slaves_to_write; int slave_priority; int repl_diskless_sync_delay; int repl_diskless_load; int repl_backlog_time_limit; int repl_backlog_size; int repl_timeout; int repl_ping_slave_period; int cluster_announce_ip; int masterauth; int masteruser; int slave_announce_ip; int rdb_filename; int dbnum; int syslog_ident; int syslog_enabled; int acl_filename; int logfile; int verbosity; int slave_announce_port; int tcpkeepalive; int maxidletime; int unixsocketperm; int unixsocket; int tcp_backlog; int cluster_announce_bus_port; int cluster_announce_port; int tls_port; int pidfile; } ;


 int AOF_REWRITE_MIN_SIZE ;
 int AOF_REWRITE_PERC ;
 int CLUSTER_DEFAULT_MIGRATION_BARRIER ;
 int CLUSTER_DEFAULT_NODE_TIMEOUT ;
 int CLUSTER_DEFAULT_SLAVE_VALIDITY ;
 int * CONFIG_DEFAULT_ACL_FILENAME ;
 int CONFIG_DEFAULT_ACTIVE_DEFRAG ;
 int * CONFIG_DEFAULT_AOF_FILENAME ;
 int CONFIG_DEFAULT_AOF_FSYNC ;
 int CONFIG_DEFAULT_CLIENT_TIMEOUT ;
 int CONFIG_DEFAULT_CLUSTER_ANNOUNCE_BUS_PORT ;
 int CONFIG_DEFAULT_CLUSTER_ANNOUNCE_PORT ;
 int * CONFIG_DEFAULT_CLUSTER_CONFIG_FILE ;
 int CONFIG_DEFAULT_DBNUM ;
 int CONFIG_DEFAULT_DEFRAG_CYCLE_MAX ;
 int CONFIG_DEFAULT_DEFRAG_CYCLE_MIN ;
 int CONFIG_DEFAULT_DEFRAG_IGNORE_BYTES ;
 int CONFIG_DEFAULT_DEFRAG_MAX_SCAN_FIELDS ;
 int CONFIG_DEFAULT_DEFRAG_THRESHOLD_LOWER ;
 int CONFIG_DEFAULT_DEFRAG_THRESHOLD_UPPER ;
 int CONFIG_DEFAULT_HLL_SPARSE_MAX_BYTES ;
 int CONFIG_DEFAULT_HZ ;
 int CONFIG_DEFAULT_IO_THREADS_NUM ;
 int CONFIG_DEFAULT_KEY_LOAD_DELAY ;
 int CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD ;
 int CONFIG_DEFAULT_LFU_DECAY_TIME ;
 int CONFIG_DEFAULT_LFU_LOG_FACTOR ;
 int * CONFIG_DEFAULT_LOGFILE ;
 int CONFIG_DEFAULT_MAXMEMORY ;
 int CONFIG_DEFAULT_MAXMEMORY_POLICY ;
 int CONFIG_DEFAULT_MAXMEMORY_SAMPLES ;
 int CONFIG_DEFAULT_MAX_CLIENTS ;
 int CONFIG_DEFAULT_MIN_SLAVES_MAX_LAG ;
 int CONFIG_DEFAULT_MIN_SLAVES_TO_WRITE ;
 int * CONFIG_DEFAULT_PID_FILE ;
 int CONFIG_DEFAULT_PROTO_MAX_BULK_LEN ;
 int * CONFIG_DEFAULT_RDB_FILENAME ;
 int CONFIG_DEFAULT_RDB_KEY_SAVE_DELAY ;
 int CONFIG_DEFAULT_REPL_BACKLOG_SIZE ;
 int CONFIG_DEFAULT_REPL_BACKLOG_TIME_LIMIT ;
 int CONFIG_DEFAULT_REPL_DISKLESS_LOAD ;
 int CONFIG_DEFAULT_REPL_DISKLESS_SYNC_DELAY ;
 int CONFIG_DEFAULT_REPL_PING_SLAVE_PERIOD ;
 int CONFIG_DEFAULT_REPL_TIMEOUT ;
 int CONFIG_DEFAULT_SERVER_TLS_PORT ;
 int * CONFIG_DEFAULT_SLAVE_ANNOUNCE_IP ;
 int CONFIG_DEFAULT_SLAVE_ANNOUNCE_PORT ;
 int CONFIG_DEFAULT_SLAVE_PRIORITY ;
 int CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN ;
 int CONFIG_DEFAULT_SLOWLOG_MAX_LEN ;
 int CONFIG_DEFAULT_SYSLOG_ENABLED ;
 int * CONFIG_DEFAULT_SYSLOG_IDENT ;
 int CONFIG_DEFAULT_TCP_BACKLOG ;
 int CONFIG_DEFAULT_TCP_KEEPALIVE ;
 int CONFIG_DEFAULT_TRACKING_TABLE_MAX_FILL ;
 int CONFIG_DEFAULT_UNIX_SOCKET_PERM ;
 int CONFIG_DEFAULT_VERBOSITY ;
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
 int SUPERVISED_NONE ;
 int aof_fsync_enum ;
 TYPE_2__* configs_yesno ;
 int loglevel_enum ;
 int maxmemory_policy_enum ;
 int repl_diskless_load_enum ;
 int rewriteConfigBindOption (struct rewriteConfigState*) ;
 int rewriteConfigBytesOption (struct rewriteConfigState*,char*,int ,int ) ;
 int rewriteConfigClientoutputbufferlimitOption (struct rewriteConfigState*) ;
 int rewriteConfigDirOption (struct rewriteConfigState*) ;
 int rewriteConfigEnumOption (struct rewriteConfigState*,char*,int ,int ,int ) ;
 int rewriteConfigGetContentFromState (struct rewriteConfigState*) ;
 int rewriteConfigNotifykeyspaceeventsOption (struct rewriteConfigState*) ;
 int rewriteConfigNumericalOption (struct rewriteConfigState*,char*,int ,int ) ;
 int rewriteConfigOctalOption (struct rewriteConfigState*,char*,int ,int ) ;
 int rewriteConfigOverwriteFile (int ,int ) ;
 struct rewriteConfigState* rewriteConfigReadOldFile (char*) ;
 int rewriteConfigReleaseState (struct rewriteConfigState*) ;
 int rewriteConfigRemoveOrphaned (struct rewriteConfigState*) ;
 int rewriteConfigRequirepassOption (struct rewriteConfigState*,char*) ;
 int rewriteConfigSaveOption (struct rewriteConfigState*) ;
 int rewriteConfigSentinelOption (struct rewriteConfigState*) ;
 int rewriteConfigSlaveofOption (struct rewriteConfigState*,char*) ;
 int rewriteConfigStringOption (struct rewriteConfigState*,char*,int ,int *) ;
 int rewriteConfigSyslogfacilityOption (struct rewriteConfigState*) ;
 int rewriteConfigUserOption (struct rewriteConfigState*) ;
 int rewriteConfigYesNoOption (struct rewriteConfigState*,char*,int ,int) ;
 int sdsfree (int ) ;
 TYPE_3__ server ;
 int supervised_mode_enum ;

int rewriteConfig(char *path) {
    struct rewriteConfigState *state;
    sds newcontent;
    int retval;


    if ((state = rewriteConfigReadOldFile(path)) == ((void*)0)) return -1;





    for (configYesNo *config = configs_yesno; config->name != ((void*)0); config++) {
        rewriteConfigYesNoOption(state,config->name,*(config->config),config->default_value);
    }

    rewriteConfigStringOption(state,"pidfile",server.pidfile,CONFIG_DEFAULT_PID_FILE);
    rewriteConfigNumericalOption(state,"tls-port",server.tls_port,CONFIG_DEFAULT_SERVER_TLS_PORT);
    rewriteConfigNumericalOption(state,"cluster-announce-port",server.cluster_announce_port,CONFIG_DEFAULT_CLUSTER_ANNOUNCE_PORT);
    rewriteConfigNumericalOption(state,"cluster-announce-bus-port",server.cluster_announce_bus_port,CONFIG_DEFAULT_CLUSTER_ANNOUNCE_BUS_PORT);
    rewriteConfigNumericalOption(state,"tcp-backlog",server.tcp_backlog,CONFIG_DEFAULT_TCP_BACKLOG);
    rewriteConfigBindOption(state);
    rewriteConfigStringOption(state,"unixsocket",server.unixsocket,((void*)0));
    rewriteConfigOctalOption(state,"unixsocketperm",server.unixsocketperm,CONFIG_DEFAULT_UNIX_SOCKET_PERM);
    rewriteConfigNumericalOption(state,"timeout",server.maxidletime,CONFIG_DEFAULT_CLIENT_TIMEOUT);
    rewriteConfigNumericalOption(state,"tcp-keepalive",server.tcpkeepalive,CONFIG_DEFAULT_TCP_KEEPALIVE);
    rewriteConfigNumericalOption(state,"replica-announce-port",server.slave_announce_port,CONFIG_DEFAULT_SLAVE_ANNOUNCE_PORT);
    rewriteConfigEnumOption(state,"loglevel",server.verbosity,loglevel_enum,CONFIG_DEFAULT_VERBOSITY);
    rewriteConfigStringOption(state,"logfile",server.logfile,CONFIG_DEFAULT_LOGFILE);
    rewriteConfigStringOption(state,"aclfile",server.acl_filename,CONFIG_DEFAULT_ACL_FILENAME);
    rewriteConfigYesNoOption(state,"syslog-enabled",server.syslog_enabled,CONFIG_DEFAULT_SYSLOG_ENABLED);
    rewriteConfigStringOption(state,"syslog-ident",server.syslog_ident,CONFIG_DEFAULT_SYSLOG_IDENT);
    rewriteConfigSyslogfacilityOption(state);
    rewriteConfigSaveOption(state);
    rewriteConfigUserOption(state);
    rewriteConfigNumericalOption(state,"databases",server.dbnum,CONFIG_DEFAULT_DBNUM);
    rewriteConfigNumericalOption(state,"io-threads",server.dbnum,CONFIG_DEFAULT_IO_THREADS_NUM);
    rewriteConfigStringOption(state,"dbfilename",server.rdb_filename,CONFIG_DEFAULT_RDB_FILENAME);
    rewriteConfigDirOption(state);
    rewriteConfigSlaveofOption(state,"replicaof");
    rewriteConfigStringOption(state,"replica-announce-ip",server.slave_announce_ip,CONFIG_DEFAULT_SLAVE_ANNOUNCE_IP);
    rewriteConfigStringOption(state,"masteruser",server.masteruser,((void*)0));
    rewriteConfigStringOption(state,"masterauth",server.masterauth,((void*)0));
    rewriteConfigStringOption(state,"cluster-announce-ip",server.cluster_announce_ip,((void*)0));
    rewriteConfigNumericalOption(state,"repl-ping-replica-period",server.repl_ping_slave_period,CONFIG_DEFAULT_REPL_PING_SLAVE_PERIOD);
    rewriteConfigNumericalOption(state,"repl-timeout",server.repl_timeout,CONFIG_DEFAULT_REPL_TIMEOUT);
    rewriteConfigBytesOption(state,"repl-backlog-size",server.repl_backlog_size,CONFIG_DEFAULT_REPL_BACKLOG_SIZE);
    rewriteConfigBytesOption(state,"repl-backlog-ttl",server.repl_backlog_time_limit,CONFIG_DEFAULT_REPL_BACKLOG_TIME_LIMIT);
    rewriteConfigEnumOption(state,"repl-diskless-load",server.repl_diskless_load,repl_diskless_load_enum,CONFIG_DEFAULT_REPL_DISKLESS_LOAD);
    rewriteConfigNumericalOption(state,"repl-diskless-sync-delay",server.repl_diskless_sync_delay,CONFIG_DEFAULT_REPL_DISKLESS_SYNC_DELAY);
    rewriteConfigNumericalOption(state,"replica-priority",server.slave_priority,CONFIG_DEFAULT_SLAVE_PRIORITY);
    rewriteConfigNumericalOption(state,"min-replicas-to-write",server.repl_min_slaves_to_write,CONFIG_DEFAULT_MIN_SLAVES_TO_WRITE);
    rewriteConfigNumericalOption(state,"min-replicas-max-lag",server.repl_min_slaves_max_lag,CONFIG_DEFAULT_MIN_SLAVES_MAX_LAG);
    rewriteConfigRequirepassOption(state,"requirepass");
    rewriteConfigNumericalOption(state,"maxclients",server.maxclients,CONFIG_DEFAULT_MAX_CLIENTS);
    rewriteConfigBytesOption(state,"maxmemory",server.maxmemory,CONFIG_DEFAULT_MAXMEMORY);
    rewriteConfigBytesOption(state,"proto-max-bulk-len",server.proto_max_bulk_len,CONFIG_DEFAULT_PROTO_MAX_BULK_LEN);
    rewriteConfigBytesOption(state,"client-query-buffer-limit",server.client_max_querybuf_len,PROTO_MAX_QUERYBUF_LEN);
    rewriteConfigEnumOption(state,"maxmemory-policy",server.maxmemory_policy,maxmemory_policy_enum,CONFIG_DEFAULT_MAXMEMORY_POLICY);
    rewriteConfigNumericalOption(state,"maxmemory-samples",server.maxmemory_samples,CONFIG_DEFAULT_MAXMEMORY_SAMPLES);
    rewriteConfigNumericalOption(state,"lfu-log-factor",server.lfu_log_factor,CONFIG_DEFAULT_LFU_LOG_FACTOR);
    rewriteConfigNumericalOption(state,"lfu-decay-time",server.lfu_decay_time,CONFIG_DEFAULT_LFU_DECAY_TIME);
    rewriteConfigNumericalOption(state,"active-defrag-threshold-lower",server.active_defrag_threshold_lower,CONFIG_DEFAULT_DEFRAG_THRESHOLD_LOWER);
    rewriteConfigNumericalOption(state,"active-defrag-threshold-upper",server.active_defrag_threshold_upper,CONFIG_DEFAULT_DEFRAG_THRESHOLD_UPPER);
    rewriteConfigBytesOption(state,"active-defrag-ignore-bytes",server.active_defrag_ignore_bytes,CONFIG_DEFAULT_DEFRAG_IGNORE_BYTES);
    rewriteConfigNumericalOption(state,"active-defrag-cycle-min",server.active_defrag_cycle_min,CONFIG_DEFAULT_DEFRAG_CYCLE_MIN);
    rewriteConfigNumericalOption(state,"active-defrag-cycle-max",server.active_defrag_cycle_max,CONFIG_DEFAULT_DEFRAG_CYCLE_MAX);
    rewriteConfigNumericalOption(state,"active-defrag-max-scan-fields",server.active_defrag_max_scan_fields,CONFIG_DEFAULT_DEFRAG_MAX_SCAN_FIELDS);
    rewriteConfigYesNoOption(state,"appendonly",server.aof_enabled,0);
    rewriteConfigStringOption(state,"appendfilename",server.aof_filename,CONFIG_DEFAULT_AOF_FILENAME);
    rewriteConfigEnumOption(state,"appendfsync",server.aof_fsync,aof_fsync_enum,CONFIG_DEFAULT_AOF_FSYNC);
    rewriteConfigNumericalOption(state,"auto-aof-rewrite-percentage",server.aof_rewrite_perc,AOF_REWRITE_PERC);
    rewriteConfigBytesOption(state,"auto-aof-rewrite-min-size",server.aof_rewrite_min_size,AOF_REWRITE_MIN_SIZE);
    rewriteConfigNumericalOption(state,"lua-time-limit",server.lua_time_limit,LUA_SCRIPT_TIME_LIMIT);
    rewriteConfigYesNoOption(state,"cluster-enabled",server.cluster_enabled,0);
    rewriteConfigStringOption(state,"cluster-config-file",server.cluster_configfile,CONFIG_DEFAULT_CLUSTER_CONFIG_FILE);
    rewriteConfigNumericalOption(state,"cluster-node-timeout",server.cluster_node_timeout,CLUSTER_DEFAULT_NODE_TIMEOUT);
    rewriteConfigNumericalOption(state,"cluster-migration-barrier",server.cluster_migration_barrier,CLUSTER_DEFAULT_MIGRATION_BARRIER);
    rewriteConfigNumericalOption(state,"cluster-replica-validity-factor",server.cluster_slave_validity_factor,CLUSTER_DEFAULT_SLAVE_VALIDITY);
    rewriteConfigNumericalOption(state,"slowlog-log-slower-than",server.slowlog_log_slower_than,CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN);
    rewriteConfigNumericalOption(state,"latency-monitor-threshold",server.latency_monitor_threshold,CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD);
    rewriteConfigNumericalOption(state,"slowlog-max-len",server.slowlog_max_len,CONFIG_DEFAULT_SLOWLOG_MAX_LEN);
    rewriteConfigNumericalOption(state,"tracking-table-max-fill",server.tracking_table_max_fill,CONFIG_DEFAULT_TRACKING_TABLE_MAX_FILL);
    rewriteConfigNotifykeyspaceeventsOption(state);
    rewriteConfigNumericalOption(state,"hash-max-ziplist-entries",server.hash_max_ziplist_entries,OBJ_HASH_MAX_ZIPLIST_ENTRIES);
    rewriteConfigNumericalOption(state,"hash-max-ziplist-value",server.hash_max_ziplist_value,OBJ_HASH_MAX_ZIPLIST_VALUE);
    rewriteConfigNumericalOption(state,"stream-node-max-bytes",server.stream_node_max_bytes,OBJ_STREAM_NODE_MAX_BYTES);
    rewriteConfigNumericalOption(state,"stream-node-max-entries",server.stream_node_max_entries,OBJ_STREAM_NODE_MAX_ENTRIES);
    rewriteConfigNumericalOption(state,"list-max-ziplist-size",server.list_max_ziplist_size,OBJ_LIST_MAX_ZIPLIST_SIZE);
    rewriteConfigNumericalOption(state,"list-compress-depth",server.list_compress_depth,OBJ_LIST_COMPRESS_DEPTH);
    rewriteConfigNumericalOption(state,"set-max-intset-entries",server.set_max_intset_entries,OBJ_SET_MAX_INTSET_ENTRIES);
    rewriteConfigNumericalOption(state,"zset-max-ziplist-entries",server.zset_max_ziplist_entries,OBJ_ZSET_MAX_ZIPLIST_ENTRIES);
    rewriteConfigNumericalOption(state,"zset-max-ziplist-value",server.zset_max_ziplist_value,OBJ_ZSET_MAX_ZIPLIST_VALUE);
    rewriteConfigNumericalOption(state,"hll-sparse-max-bytes",server.hll_sparse_max_bytes,CONFIG_DEFAULT_HLL_SPARSE_MAX_BYTES);
    rewriteConfigYesNoOption(state,"activedefrag",server.active_defrag_enabled,CONFIG_DEFAULT_ACTIVE_DEFRAG);
    rewriteConfigClientoutputbufferlimitOption(state);
    rewriteConfigNumericalOption(state,"hz",server.config_hz,CONFIG_DEFAULT_HZ);
    rewriteConfigEnumOption(state,"supervised",server.supervised_mode,supervised_mode_enum,SUPERVISED_NONE);
    rewriteConfigNumericalOption(state,"rdb-key-save-delay",server.rdb_key_save_delay,CONFIG_DEFAULT_RDB_KEY_SAVE_DELAY);
    rewriteConfigNumericalOption(state,"key-load-delay",server.key_load_delay,CONFIG_DEFAULT_KEY_LOAD_DELAY);
    if (server.sentinel_mode) rewriteConfigSentinelOption(state);




    rewriteConfigRemoveOrphaned(state);



    newcontent = rewriteConfigGetContentFromState(state);
    retval = rewriteConfigOverwriteFile(server.configfile,newcontent);

    sdsfree(newcontent);
    rewriteConfigReleaseState(state);
    return retval;
}
