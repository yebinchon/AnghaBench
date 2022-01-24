#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rewriteConfigState {int dummy; } ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_6__ {char* name; int default_value; int /*<<< orphan*/ * config; } ;
typedef  TYPE_2__ configYesNo ;
struct TYPE_5__ {int /*<<< orphan*/  prefer_server_ciphers; int /*<<< orphan*/  ciphersuites; int /*<<< orphan*/  ciphers; int /*<<< orphan*/  protocols; int /*<<< orphan*/  ca_cert_dir; int /*<<< orphan*/  ca_cert_file; int /*<<< orphan*/  dh_params_file; int /*<<< orphan*/  key_file; int /*<<< orphan*/  cert_file; } ;
struct TYPE_7__ {int /*<<< orphan*/  configfile; scalar_t__ sentinel_mode; TYPE_1__ tls_ctx_config; int /*<<< orphan*/  tls_auth_clients; int /*<<< orphan*/  tls_replication; int /*<<< orphan*/  tls_cluster; int /*<<< orphan*/  key_load_delay; int /*<<< orphan*/  rdb_key_save_delay; int /*<<< orphan*/  supervised_mode; int /*<<< orphan*/  config_hz; int /*<<< orphan*/  active_defrag_enabled; int /*<<< orphan*/  hll_sparse_max_bytes; int /*<<< orphan*/  zset_max_ziplist_value; int /*<<< orphan*/  zset_max_ziplist_entries; int /*<<< orphan*/  set_max_intset_entries; int /*<<< orphan*/  list_compress_depth; int /*<<< orphan*/  list_max_ziplist_size; int /*<<< orphan*/  stream_node_max_entries; int /*<<< orphan*/  stream_node_max_bytes; int /*<<< orphan*/  hash_max_ziplist_value; int /*<<< orphan*/  hash_max_ziplist_entries; int /*<<< orphan*/  tracking_table_max_fill; int /*<<< orphan*/  slowlog_max_len; int /*<<< orphan*/  latency_monitor_threshold; int /*<<< orphan*/  slowlog_log_slower_than; int /*<<< orphan*/  cluster_slave_validity_factor; int /*<<< orphan*/  cluster_migration_barrier; int /*<<< orphan*/  cluster_node_timeout; int /*<<< orphan*/  cluster_configfile; int /*<<< orphan*/  cluster_enabled; int /*<<< orphan*/  lua_time_limit; int /*<<< orphan*/  aof_rewrite_min_size; int /*<<< orphan*/  aof_rewrite_perc; int /*<<< orphan*/  aof_fsync; int /*<<< orphan*/  aof_filename; int /*<<< orphan*/  aof_enabled; int /*<<< orphan*/  active_defrag_max_scan_fields; int /*<<< orphan*/  active_defrag_cycle_max; int /*<<< orphan*/  active_defrag_cycle_min; int /*<<< orphan*/  active_defrag_ignore_bytes; int /*<<< orphan*/  active_defrag_threshold_upper; int /*<<< orphan*/  active_defrag_threshold_lower; int /*<<< orphan*/  lfu_decay_time; int /*<<< orphan*/  lfu_log_factor; int /*<<< orphan*/  maxmemory_samples; int /*<<< orphan*/  maxmemory_policy; int /*<<< orphan*/  client_max_querybuf_len; int /*<<< orphan*/  proto_max_bulk_len; int /*<<< orphan*/  maxmemory; int /*<<< orphan*/  maxclients; int /*<<< orphan*/  repl_min_slaves_max_lag; int /*<<< orphan*/  repl_min_slaves_to_write; int /*<<< orphan*/  slave_priority; int /*<<< orphan*/  repl_diskless_sync_delay; int /*<<< orphan*/  repl_diskless_load; int /*<<< orphan*/  repl_backlog_time_limit; int /*<<< orphan*/  repl_backlog_size; int /*<<< orphan*/  repl_timeout; int /*<<< orphan*/  repl_ping_slave_period; int /*<<< orphan*/  cluster_announce_ip; int /*<<< orphan*/  masterauth; int /*<<< orphan*/  masteruser; int /*<<< orphan*/  slave_announce_ip; int /*<<< orphan*/  rdb_filename; int /*<<< orphan*/  dbnum; int /*<<< orphan*/  syslog_ident; int /*<<< orphan*/  syslog_enabled; int /*<<< orphan*/  acl_filename; int /*<<< orphan*/  logfile; int /*<<< orphan*/  verbosity; int /*<<< orphan*/  slave_announce_port; int /*<<< orphan*/  tcpkeepalive; int /*<<< orphan*/  maxidletime; int /*<<< orphan*/  unixsocketperm; int /*<<< orphan*/  unixsocket; int /*<<< orphan*/  tcp_backlog; int /*<<< orphan*/  cluster_announce_bus_port; int /*<<< orphan*/  cluster_announce_port; int /*<<< orphan*/  tls_port; int /*<<< orphan*/  pidfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  AOF_REWRITE_MIN_SIZE ; 
 int /*<<< orphan*/  AOF_REWRITE_PERC ; 
 int /*<<< orphan*/  CLUSTER_DEFAULT_MIGRATION_BARRIER ; 
 int /*<<< orphan*/  CLUSTER_DEFAULT_NODE_TIMEOUT ; 
 int /*<<< orphan*/  CLUSTER_DEFAULT_SLAVE_VALIDITY ; 
 int /*<<< orphan*/ * CONFIG_DEFAULT_ACL_FILENAME ; 
 int CONFIG_DEFAULT_ACTIVE_DEFRAG ; 
 int /*<<< orphan*/ * CONFIG_DEFAULT_AOF_FILENAME ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_AOF_FSYNC ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_CLIENT_TIMEOUT ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_CLUSTER_ANNOUNCE_BUS_PORT ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_CLUSTER_ANNOUNCE_PORT ; 
 int /*<<< orphan*/ * CONFIG_DEFAULT_CLUSTER_CONFIG_FILE ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_DBNUM ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_DEFRAG_CYCLE_MAX ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_DEFRAG_CYCLE_MIN ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_DEFRAG_IGNORE_BYTES ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_DEFRAG_MAX_SCAN_FIELDS ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_DEFRAG_THRESHOLD_LOWER ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_DEFRAG_THRESHOLD_UPPER ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_HLL_SPARSE_MAX_BYTES ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_HZ ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_IO_THREADS_NUM ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_KEY_LOAD_DELAY ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_LFU_DECAY_TIME ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_LFU_LOG_FACTOR ; 
 int /*<<< orphan*/ * CONFIG_DEFAULT_LOGFILE ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_MAXMEMORY ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_MAXMEMORY_POLICY ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_MAXMEMORY_SAMPLES ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_MAX_CLIENTS ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_MIN_SLAVES_MAX_LAG ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_MIN_SLAVES_TO_WRITE ; 
 int /*<<< orphan*/ * CONFIG_DEFAULT_PID_FILE ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_PROTO_MAX_BULK_LEN ; 
 int /*<<< orphan*/ * CONFIG_DEFAULT_RDB_FILENAME ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_RDB_KEY_SAVE_DELAY ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_REPL_BACKLOG_SIZE ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_REPL_BACKLOG_TIME_LIMIT ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_REPL_DISKLESS_LOAD ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_REPL_DISKLESS_SYNC_DELAY ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_REPL_PING_SLAVE_PERIOD ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_REPL_TIMEOUT ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_SERVER_TLS_PORT ; 
 int /*<<< orphan*/ * CONFIG_DEFAULT_SLAVE_ANNOUNCE_IP ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_SLAVE_ANNOUNCE_PORT ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_SLAVE_PRIORITY ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_SLOWLOG_MAX_LEN ; 
 int CONFIG_DEFAULT_SYSLOG_ENABLED ; 
 int /*<<< orphan*/ * CONFIG_DEFAULT_SYSLOG_IDENT ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_TCP_BACKLOG ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_TCP_KEEPALIVE ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_TRACKING_TABLE_MAX_FILL ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_UNIX_SOCKET_PERM ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_VERBOSITY ; 
 int /*<<< orphan*/  LUA_SCRIPT_TIME_LIMIT ; 
 int /*<<< orphan*/  OBJ_HASH_MAX_ZIPLIST_ENTRIES ; 
 int /*<<< orphan*/  OBJ_HASH_MAX_ZIPLIST_VALUE ; 
 int /*<<< orphan*/  OBJ_LIST_COMPRESS_DEPTH ; 
 int /*<<< orphan*/  OBJ_LIST_MAX_ZIPLIST_SIZE ; 
 int /*<<< orphan*/  OBJ_SET_MAX_INTSET_ENTRIES ; 
 int /*<<< orphan*/  OBJ_STREAM_NODE_MAX_BYTES ; 
 int /*<<< orphan*/  OBJ_STREAM_NODE_MAX_ENTRIES ; 
 int /*<<< orphan*/  OBJ_ZSET_MAX_ZIPLIST_ENTRIES ; 
 int /*<<< orphan*/  OBJ_ZSET_MAX_ZIPLIST_VALUE ; 
 int /*<<< orphan*/  PROTO_MAX_QUERYBUF_LEN ; 
 int /*<<< orphan*/  SUPERVISED_NONE ; 
 int /*<<< orphan*/  aof_fsync_enum ; 
 TYPE_2__* configs_yesno ; 
 int /*<<< orphan*/  loglevel_enum ; 
 int /*<<< orphan*/  maxmemory_policy_enum ; 
 int /*<<< orphan*/  repl_diskless_load_enum ; 
 int /*<<< orphan*/  FUNC0 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC1 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC3 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC4 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC6 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC7 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rewriteConfigState* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC12 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC13 (struct rewriteConfigState*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC15 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC16 (struct rewriteConfigState*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC19 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC20 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  supervised_mode_enum ; 

int FUNC22(char *path) {
    struct rewriteConfigState *state;
    sds newcontent;
    int retval;

    /* Step 1: read the old config into our rewrite state. */
    if ((state = FUNC10(path)) == NULL) return -1;

    /* Step 2: rewrite every single option, replacing or appending it inside
     * the rewrite state. */

    /* Iterate the configs that are standard */
    for (configYesNo *config = configs_yesno; config->name != NULL; config++) {
        FUNC20(state,config->name,*(config->config),config->default_value);
    }

    FUNC17(state,"pidfile",server.pidfile,CONFIG_DEFAULT_PID_FILE);
    FUNC7(state,"tls-port",server.tls_port,CONFIG_DEFAULT_SERVER_TLS_PORT);
    FUNC7(state,"cluster-announce-port",server.cluster_announce_port,CONFIG_DEFAULT_CLUSTER_ANNOUNCE_PORT);
    FUNC7(state,"cluster-announce-bus-port",server.cluster_announce_bus_port,CONFIG_DEFAULT_CLUSTER_ANNOUNCE_BUS_PORT);
    FUNC7(state,"tcp-backlog",server.tcp_backlog,CONFIG_DEFAULT_TCP_BACKLOG);
    FUNC0(state);
    FUNC17(state,"unixsocket",server.unixsocket,NULL);
    FUNC8(state,"unixsocketperm",server.unixsocketperm,CONFIG_DEFAULT_UNIX_SOCKET_PERM);
    FUNC7(state,"timeout",server.maxidletime,CONFIG_DEFAULT_CLIENT_TIMEOUT);
    FUNC7(state,"tcp-keepalive",server.tcpkeepalive,CONFIG_DEFAULT_TCP_KEEPALIVE);
    FUNC7(state,"replica-announce-port",server.slave_announce_port,CONFIG_DEFAULT_SLAVE_ANNOUNCE_PORT);
    FUNC4(state,"loglevel",server.verbosity,loglevel_enum,CONFIG_DEFAULT_VERBOSITY);
    FUNC17(state,"logfile",server.logfile,CONFIG_DEFAULT_LOGFILE);
    FUNC17(state,"aclfile",server.acl_filename,CONFIG_DEFAULT_ACL_FILENAME);
    FUNC20(state,"syslog-enabled",server.syslog_enabled,CONFIG_DEFAULT_SYSLOG_ENABLED);
    FUNC17(state,"syslog-ident",server.syslog_ident,CONFIG_DEFAULT_SYSLOG_IDENT);
    FUNC18(state);
    FUNC14(state);
    FUNC19(state);
    FUNC7(state,"databases",server.dbnum,CONFIG_DEFAULT_DBNUM);
    FUNC7(state,"io-threads",server.dbnum,CONFIG_DEFAULT_IO_THREADS_NUM);
    FUNC17(state,"dbfilename",server.rdb_filename,CONFIG_DEFAULT_RDB_FILENAME);
    FUNC3(state);
    FUNC16(state,"replicaof");
    FUNC17(state,"replica-announce-ip",server.slave_announce_ip,CONFIG_DEFAULT_SLAVE_ANNOUNCE_IP);
    FUNC17(state,"masteruser",server.masteruser,NULL);
    FUNC17(state,"masterauth",server.masterauth,NULL);
    FUNC17(state,"cluster-announce-ip",server.cluster_announce_ip,NULL);
    FUNC7(state,"repl-ping-replica-period",server.repl_ping_slave_period,CONFIG_DEFAULT_REPL_PING_SLAVE_PERIOD);
    FUNC7(state,"repl-timeout",server.repl_timeout,CONFIG_DEFAULT_REPL_TIMEOUT);
    FUNC1(state,"repl-backlog-size",server.repl_backlog_size,CONFIG_DEFAULT_REPL_BACKLOG_SIZE);
    FUNC1(state,"repl-backlog-ttl",server.repl_backlog_time_limit,CONFIG_DEFAULT_REPL_BACKLOG_TIME_LIMIT);
    FUNC4(state,"repl-diskless-load",server.repl_diskless_load,repl_diskless_load_enum,CONFIG_DEFAULT_REPL_DISKLESS_LOAD);
    FUNC7(state,"repl-diskless-sync-delay",server.repl_diskless_sync_delay,CONFIG_DEFAULT_REPL_DISKLESS_SYNC_DELAY);
    FUNC7(state,"replica-priority",server.slave_priority,CONFIG_DEFAULT_SLAVE_PRIORITY);
    FUNC7(state,"min-replicas-to-write",server.repl_min_slaves_to_write,CONFIG_DEFAULT_MIN_SLAVES_TO_WRITE);
    FUNC7(state,"min-replicas-max-lag",server.repl_min_slaves_max_lag,CONFIG_DEFAULT_MIN_SLAVES_MAX_LAG);
    FUNC13(state,"requirepass");
    FUNC7(state,"maxclients",server.maxclients,CONFIG_DEFAULT_MAX_CLIENTS);
    FUNC1(state,"maxmemory",server.maxmemory,CONFIG_DEFAULT_MAXMEMORY);
    FUNC1(state,"proto-max-bulk-len",server.proto_max_bulk_len,CONFIG_DEFAULT_PROTO_MAX_BULK_LEN);
    FUNC1(state,"client-query-buffer-limit",server.client_max_querybuf_len,PROTO_MAX_QUERYBUF_LEN);
    FUNC4(state,"maxmemory-policy",server.maxmemory_policy,maxmemory_policy_enum,CONFIG_DEFAULT_MAXMEMORY_POLICY);
    FUNC7(state,"maxmemory-samples",server.maxmemory_samples,CONFIG_DEFAULT_MAXMEMORY_SAMPLES);
    FUNC7(state,"lfu-log-factor",server.lfu_log_factor,CONFIG_DEFAULT_LFU_LOG_FACTOR);
    FUNC7(state,"lfu-decay-time",server.lfu_decay_time,CONFIG_DEFAULT_LFU_DECAY_TIME);
    FUNC7(state,"active-defrag-threshold-lower",server.active_defrag_threshold_lower,CONFIG_DEFAULT_DEFRAG_THRESHOLD_LOWER);
    FUNC7(state,"active-defrag-threshold-upper",server.active_defrag_threshold_upper,CONFIG_DEFAULT_DEFRAG_THRESHOLD_UPPER);
    FUNC1(state,"active-defrag-ignore-bytes",server.active_defrag_ignore_bytes,CONFIG_DEFAULT_DEFRAG_IGNORE_BYTES);
    FUNC7(state,"active-defrag-cycle-min",server.active_defrag_cycle_min,CONFIG_DEFAULT_DEFRAG_CYCLE_MIN);
    FUNC7(state,"active-defrag-cycle-max",server.active_defrag_cycle_max,CONFIG_DEFAULT_DEFRAG_CYCLE_MAX);
    FUNC7(state,"active-defrag-max-scan-fields",server.active_defrag_max_scan_fields,CONFIG_DEFAULT_DEFRAG_MAX_SCAN_FIELDS);
    FUNC20(state,"appendonly",server.aof_enabled,0);
    FUNC17(state,"appendfilename",server.aof_filename,CONFIG_DEFAULT_AOF_FILENAME);
    FUNC4(state,"appendfsync",server.aof_fsync,aof_fsync_enum,CONFIG_DEFAULT_AOF_FSYNC);
    FUNC7(state,"auto-aof-rewrite-percentage",server.aof_rewrite_perc,AOF_REWRITE_PERC);
    FUNC1(state,"auto-aof-rewrite-min-size",server.aof_rewrite_min_size,AOF_REWRITE_MIN_SIZE);
    FUNC7(state,"lua-time-limit",server.lua_time_limit,LUA_SCRIPT_TIME_LIMIT);
    FUNC20(state,"cluster-enabled",server.cluster_enabled,0);
    FUNC17(state,"cluster-config-file",server.cluster_configfile,CONFIG_DEFAULT_CLUSTER_CONFIG_FILE);
    FUNC7(state,"cluster-node-timeout",server.cluster_node_timeout,CLUSTER_DEFAULT_NODE_TIMEOUT);
    FUNC7(state,"cluster-migration-barrier",server.cluster_migration_barrier,CLUSTER_DEFAULT_MIGRATION_BARRIER);
    FUNC7(state,"cluster-replica-validity-factor",server.cluster_slave_validity_factor,CLUSTER_DEFAULT_SLAVE_VALIDITY);
    FUNC7(state,"slowlog-log-slower-than",server.slowlog_log_slower_than,CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN);
    FUNC7(state,"latency-monitor-threshold",server.latency_monitor_threshold,CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD);
    FUNC7(state,"slowlog-max-len",server.slowlog_max_len,CONFIG_DEFAULT_SLOWLOG_MAX_LEN);
    FUNC7(state,"tracking-table-max-fill",server.tracking_table_max_fill,CONFIG_DEFAULT_TRACKING_TABLE_MAX_FILL);
    FUNC6(state);
    FUNC7(state,"hash-max-ziplist-entries",server.hash_max_ziplist_entries,OBJ_HASH_MAX_ZIPLIST_ENTRIES);
    FUNC7(state,"hash-max-ziplist-value",server.hash_max_ziplist_value,OBJ_HASH_MAX_ZIPLIST_VALUE);
    FUNC7(state,"stream-node-max-bytes",server.stream_node_max_bytes,OBJ_STREAM_NODE_MAX_BYTES);
    FUNC7(state,"stream-node-max-entries",server.stream_node_max_entries,OBJ_STREAM_NODE_MAX_ENTRIES);
    FUNC7(state,"list-max-ziplist-size",server.list_max_ziplist_size,OBJ_LIST_MAX_ZIPLIST_SIZE);
    FUNC7(state,"list-compress-depth",server.list_compress_depth,OBJ_LIST_COMPRESS_DEPTH);
    FUNC7(state,"set-max-intset-entries",server.set_max_intset_entries,OBJ_SET_MAX_INTSET_ENTRIES);
    FUNC7(state,"zset-max-ziplist-entries",server.zset_max_ziplist_entries,OBJ_ZSET_MAX_ZIPLIST_ENTRIES);
    FUNC7(state,"zset-max-ziplist-value",server.zset_max_ziplist_value,OBJ_ZSET_MAX_ZIPLIST_VALUE);
    FUNC7(state,"hll-sparse-max-bytes",server.hll_sparse_max_bytes,CONFIG_DEFAULT_HLL_SPARSE_MAX_BYTES);
    FUNC20(state,"activedefrag",server.active_defrag_enabled,CONFIG_DEFAULT_ACTIVE_DEFRAG);
    FUNC2(state);
    FUNC7(state,"hz",server.config_hz,CONFIG_DEFAULT_HZ);
    FUNC4(state,"supervised",server.supervised_mode,supervised_mode_enum,SUPERVISED_NONE);
    FUNC7(state,"rdb-key-save-delay",server.rdb_key_save_delay,CONFIG_DEFAULT_RDB_KEY_SAVE_DELAY);
    FUNC7(state,"key-load-delay",server.key_load_delay,CONFIG_DEFAULT_KEY_LOAD_DELAY);
#ifdef USE_OPENSSL
    rewriteConfigYesNoOption(state,"tls-cluster",server.tls_cluster,0);
    rewriteConfigYesNoOption(state,"tls-replication",server.tls_replication,0);
    rewriteConfigYesNoOption(state,"tls-auth-clients",server.tls_auth_clients,1);
    rewriteConfigStringOption(state,"tls-cert-file",server.tls_ctx_config.cert_file,NULL);
    rewriteConfigStringOption(state,"tls-key-file",server.tls_ctx_config.key_file,NULL);
    rewriteConfigStringOption(state,"tls-dh-params-file",server.tls_ctx_config.dh_params_file,NULL);
    rewriteConfigStringOption(state,"tls-ca-cert-file",server.tls_ctx_config.ca_cert_file,NULL);
    rewriteConfigStringOption(state,"tls-ca-cert-dir",server.tls_ctx_config.ca_cert_dir,NULL);
    rewriteConfigStringOption(state,"tls-protocols",server.tls_ctx_config.protocols,NULL);
    rewriteConfigStringOption(state,"tls-ciphers",server.tls_ctx_config.ciphers,NULL);
    rewriteConfigStringOption(state,"tls-ciphersuites",server.tls_ctx_config.ciphersuites,NULL);
    rewriteConfigYesNoOption(state,"tls-prefer-server-ciphers",server.tls_ctx_config.prefer_server_ciphers,0);
#endif

    /* Rewrite Sentinel config if in Sentinel mode. */
    if (server.sentinel_mode) FUNC15(state);

    /* Step 3: remove all the orphaned lines in the old file, that is, lines
     * that were used by a config option and are no longer used, like in case
     * of multiple "save" options or duplicated options. */
    FUNC12(state);

    /* Step 4: generate a new configuration file from the modified state
     * and write it into the original file. */
    newcontent = FUNC5(state);
    retval = FUNC9(server.configfile,newcontent);

    FUNC21(newcontent);
    FUNC11(state);
    return retval;
}