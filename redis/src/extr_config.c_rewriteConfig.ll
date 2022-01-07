; ModuleID = '/home/carl/AnghaBench/redis/src/extr_config.c_rewriteConfig.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_config.c_rewriteConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32* }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rewriteConfigState = type { i32 }

@configs_yesno = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"pidfile\00", align 1
@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CONFIG_DEFAULT_PID_FILE = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"tls-port\00", align 1
@CONFIG_DEFAULT_SERVER_TLS_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"cluster-announce-port\00", align 1
@CONFIG_DEFAULT_CLUSTER_ANNOUNCE_PORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"cluster-announce-bus-port\00", align 1
@CONFIG_DEFAULT_CLUSTER_ANNOUNCE_BUS_PORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"tcp-backlog\00", align 1
@CONFIG_DEFAULT_TCP_BACKLOG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"unixsocket\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"unixsocketperm\00", align 1
@CONFIG_DEFAULT_UNIX_SOCKET_PERM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@CONFIG_DEFAULT_CLIENT_TIMEOUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"tcp-keepalive\00", align 1
@CONFIG_DEFAULT_TCP_KEEPALIVE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"replica-announce-port\00", align 1
@CONFIG_DEFAULT_SLAVE_ANNOUNCE_PORT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"loglevel\00", align 1
@loglevel_enum = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_VERBOSITY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"logfile\00", align 1
@CONFIG_DEFAULT_LOGFILE = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"aclfile\00", align 1
@CONFIG_DEFAULT_ACL_FILENAME = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"syslog-enabled\00", align 1
@CONFIG_DEFAULT_SYSLOG_ENABLED = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"syslog-ident\00", align 1
@CONFIG_DEFAULT_SYSLOG_IDENT = common dso_local global i32* null, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"databases\00", align 1
@CONFIG_DEFAULT_DBNUM = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"io-threads\00", align 1
@CONFIG_DEFAULT_IO_THREADS_NUM = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"dbfilename\00", align 1
@CONFIG_DEFAULT_RDB_FILENAME = common dso_local global i32* null, align 8
@.str.18 = private unnamed_addr constant [10 x i8] c"replicaof\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"replica-announce-ip\00", align 1
@CONFIG_DEFAULT_SLAVE_ANNOUNCE_IP = common dso_local global i32* null, align 8
@.str.20 = private unnamed_addr constant [11 x i8] c"masteruser\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"masterauth\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"cluster-announce-ip\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"repl-ping-replica-period\00", align 1
@CONFIG_DEFAULT_REPL_PING_SLAVE_PERIOD = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [13 x i8] c"repl-timeout\00", align 1
@CONFIG_DEFAULT_REPL_TIMEOUT = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [18 x i8] c"repl-backlog-size\00", align 1
@CONFIG_DEFAULT_REPL_BACKLOG_SIZE = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [17 x i8] c"repl-backlog-ttl\00", align 1
@CONFIG_DEFAULT_REPL_BACKLOG_TIME_LIMIT = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [19 x i8] c"repl-diskless-load\00", align 1
@repl_diskless_load_enum = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_REPL_DISKLESS_LOAD = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [25 x i8] c"repl-diskless-sync-delay\00", align 1
@CONFIG_DEFAULT_REPL_DISKLESS_SYNC_DELAY = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [17 x i8] c"replica-priority\00", align 1
@CONFIG_DEFAULT_SLAVE_PRIORITY = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [22 x i8] c"min-replicas-to-write\00", align 1
@CONFIG_DEFAULT_MIN_SLAVES_TO_WRITE = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [21 x i8] c"min-replicas-max-lag\00", align 1
@CONFIG_DEFAULT_MIN_SLAVES_MAX_LAG = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [12 x i8] c"requirepass\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"maxclients\00", align 1
@CONFIG_DEFAULT_MAX_CLIENTS = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@CONFIG_DEFAULT_MAXMEMORY = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [19 x i8] c"proto-max-bulk-len\00", align 1
@CONFIG_DEFAULT_PROTO_MAX_BULK_LEN = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [26 x i8] c"client-query-buffer-limit\00", align 1
@PROTO_MAX_QUERYBUF_LEN = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [17 x i8] c"maxmemory-policy\00", align 1
@maxmemory_policy_enum = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_MAXMEMORY_POLICY = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [18 x i8] c"maxmemory-samples\00", align 1
@CONFIG_DEFAULT_MAXMEMORY_SAMPLES = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [15 x i8] c"lfu-log-factor\00", align 1
@CONFIG_DEFAULT_LFU_LOG_FACTOR = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [15 x i8] c"lfu-decay-time\00", align 1
@CONFIG_DEFAULT_LFU_DECAY_TIME = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [30 x i8] c"active-defrag-threshold-lower\00", align 1
@CONFIG_DEFAULT_DEFRAG_THRESHOLD_LOWER = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [30 x i8] c"active-defrag-threshold-upper\00", align 1
@CONFIG_DEFAULT_DEFRAG_THRESHOLD_UPPER = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [27 x i8] c"active-defrag-ignore-bytes\00", align 1
@CONFIG_DEFAULT_DEFRAG_IGNORE_BYTES = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [24 x i8] c"active-defrag-cycle-min\00", align 1
@CONFIG_DEFAULT_DEFRAG_CYCLE_MIN = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [24 x i8] c"active-defrag-cycle-max\00", align 1
@CONFIG_DEFAULT_DEFRAG_CYCLE_MAX = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [30 x i8] c"active-defrag-max-scan-fields\00", align 1
@CONFIG_DEFAULT_DEFRAG_MAX_SCAN_FIELDS = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [11 x i8] c"appendonly\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"appendfilename\00", align 1
@CONFIG_DEFAULT_AOF_FILENAME = common dso_local global i32* null, align 8
@.str.49 = private unnamed_addr constant [12 x i8] c"appendfsync\00", align 1
@aof_fsync_enum = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_AOF_FSYNC = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [28 x i8] c"auto-aof-rewrite-percentage\00", align 1
@AOF_REWRITE_PERC = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [26 x i8] c"auto-aof-rewrite-min-size\00", align 1
@AOF_REWRITE_MIN_SIZE = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [15 x i8] c"lua-time-limit\00", align 1
@LUA_SCRIPT_TIME_LIMIT = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [16 x i8] c"cluster-enabled\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"cluster-config-file\00", align 1
@CONFIG_DEFAULT_CLUSTER_CONFIG_FILE = common dso_local global i32* null, align 8
@.str.55 = private unnamed_addr constant [21 x i8] c"cluster-node-timeout\00", align 1
@CLUSTER_DEFAULT_NODE_TIMEOUT = common dso_local global i32 0, align 4
@.str.56 = private unnamed_addr constant [26 x i8] c"cluster-migration-barrier\00", align 1
@CLUSTER_DEFAULT_MIGRATION_BARRIER = common dso_local global i32 0, align 4
@.str.57 = private unnamed_addr constant [32 x i8] c"cluster-replica-validity-factor\00", align 1
@CLUSTER_DEFAULT_SLAVE_VALIDITY = common dso_local global i32 0, align 4
@.str.58 = private unnamed_addr constant [24 x i8] c"slowlog-log-slower-than\00", align 1
@CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [26 x i8] c"latency-monitor-threshold\00", align 1
@CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD = common dso_local global i32 0, align 4
@.str.60 = private unnamed_addr constant [16 x i8] c"slowlog-max-len\00", align 1
@CONFIG_DEFAULT_SLOWLOG_MAX_LEN = common dso_local global i32 0, align 4
@.str.61 = private unnamed_addr constant [24 x i8] c"tracking-table-max-fill\00", align 1
@CONFIG_DEFAULT_TRACKING_TABLE_MAX_FILL = common dso_local global i32 0, align 4
@.str.62 = private unnamed_addr constant [25 x i8] c"hash-max-ziplist-entries\00", align 1
@OBJ_HASH_MAX_ZIPLIST_ENTRIES = common dso_local global i32 0, align 4
@.str.63 = private unnamed_addr constant [23 x i8] c"hash-max-ziplist-value\00", align 1
@OBJ_HASH_MAX_ZIPLIST_VALUE = common dso_local global i32 0, align 4
@.str.64 = private unnamed_addr constant [22 x i8] c"stream-node-max-bytes\00", align 1
@OBJ_STREAM_NODE_MAX_BYTES = common dso_local global i32 0, align 4
@.str.65 = private unnamed_addr constant [24 x i8] c"stream-node-max-entries\00", align 1
@OBJ_STREAM_NODE_MAX_ENTRIES = common dso_local global i32 0, align 4
@.str.66 = private unnamed_addr constant [22 x i8] c"list-max-ziplist-size\00", align 1
@OBJ_LIST_MAX_ZIPLIST_SIZE = common dso_local global i32 0, align 4
@.str.67 = private unnamed_addr constant [20 x i8] c"list-compress-depth\00", align 1
@OBJ_LIST_COMPRESS_DEPTH = common dso_local global i32 0, align 4
@.str.68 = private unnamed_addr constant [23 x i8] c"set-max-intset-entries\00", align 1
@OBJ_SET_MAX_INTSET_ENTRIES = common dso_local global i32 0, align 4
@.str.69 = private unnamed_addr constant [25 x i8] c"zset-max-ziplist-entries\00", align 1
@OBJ_ZSET_MAX_ZIPLIST_ENTRIES = common dso_local global i32 0, align 4
@.str.70 = private unnamed_addr constant [23 x i8] c"zset-max-ziplist-value\00", align 1
@OBJ_ZSET_MAX_ZIPLIST_VALUE = common dso_local global i32 0, align 4
@.str.71 = private unnamed_addr constant [21 x i8] c"hll-sparse-max-bytes\00", align 1
@CONFIG_DEFAULT_HLL_SPARSE_MAX_BYTES = common dso_local global i32 0, align 4
@.str.72 = private unnamed_addr constant [13 x i8] c"activedefrag\00", align 1
@CONFIG_DEFAULT_ACTIVE_DEFRAG = common dso_local global i32 0, align 4
@.str.73 = private unnamed_addr constant [3 x i8] c"hz\00", align 1
@CONFIG_DEFAULT_HZ = common dso_local global i32 0, align 4
@.str.74 = private unnamed_addr constant [11 x i8] c"supervised\00", align 1
@supervised_mode_enum = common dso_local global i32 0, align 4
@SUPERVISED_NONE = common dso_local global i32 0, align 4
@.str.75 = private unnamed_addr constant [19 x i8] c"rdb-key-save-delay\00", align 1
@CONFIG_DEFAULT_RDB_KEY_SAVE_DELAY = common dso_local global i32 0, align 4
@.str.76 = private unnamed_addr constant [15 x i8] c"key-load-delay\00", align 1
@CONFIG_DEFAULT_KEY_LOAD_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rewriteConfig(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rewriteConfigState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.rewriteConfigState* @rewriteConfigReadOldFile(i8* %8)
  store %struct.rewriteConfigState* %9, %struct.rewriteConfigState** %4, align 8
  %10 = icmp eq %struct.rewriteConfigState* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %371

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @configs_yesno, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %7, align 8
  br label %14

14:                                               ; preds = %32, %12
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @rewriteConfigYesNoOption(%struct.rewriteConfigState* %20, i8* %23, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %19
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 1
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %7, align 8
  br label %14

35:                                               ; preds = %14
  %36 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 79), align 4
  %38 = load i32*, i32** @CONFIG_DEFAULT_PID_FILE, align 8
  %39 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %37, i32* %38)
  %40 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 78), align 8
  %42 = load i32, i32* @CONFIG_DEFAULT_SERVER_TLS_PORT, align 4
  %43 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 77), align 4
  %46 = load i32, i32* @CONFIG_DEFAULT_CLUSTER_ANNOUNCE_PORT, align 4
  %47 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 76), align 8
  %50 = load i32, i32* @CONFIG_DEFAULT_CLUSTER_ANNOUNCE_BUS_PORT, align 4
  %51 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 75), align 4
  %54 = load i32, i32* @CONFIG_DEFAULT_TCP_BACKLOG, align 4
  %55 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %57 = call i32 @rewriteConfigBindOption(%struct.rewriteConfigState* %56)
  %58 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 74), align 8
  %60 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %59, i32* null)
  %61 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 73), align 4
  %63 = load i32, i32* @CONFIG_DEFAULT_UNIX_SOCKET_PERM, align 4
  %64 = call i32 @rewriteConfigOctalOption(%struct.rewriteConfigState* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 72), align 8
  %67 = load i32, i32* @CONFIG_DEFAULT_CLIENT_TIMEOUT, align 4
  %68 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 71), align 4
  %71 = load i32, i32* @CONFIG_DEFAULT_TCP_KEEPALIVE, align 4
  %72 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 70), align 8
  %75 = load i32, i32* @CONFIG_DEFAULT_SLAVE_ANNOUNCE_PORT, align 4
  %76 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 69), align 4
  %79 = load i32, i32* @loglevel_enum, align 4
  %80 = load i32, i32* @CONFIG_DEFAULT_VERBOSITY, align 4
  %81 = call i32 @rewriteConfigEnumOption(%struct.rewriteConfigState* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %78, i32 %79, i32 %80)
  %82 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 68), align 8
  %84 = load i32*, i32** @CONFIG_DEFAULT_LOGFILE, align 8
  %85 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %83, i32* %84)
  %86 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 67), align 4
  %88 = load i32*, i32** @CONFIG_DEFAULT_ACL_FILENAME, align 8
  %89 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %87, i32* %88)
  %90 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 66), align 8
  %92 = load i32, i32* @CONFIG_DEFAULT_SYSLOG_ENABLED, align 4
  %93 = call i32 @rewriteConfigYesNoOption(%struct.rewriteConfigState* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 65), align 4
  %96 = load i32*, i32** @CONFIG_DEFAULT_SYSLOG_IDENT, align 8
  %97 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %95, i32* %96)
  %98 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %99 = call i32 @rewriteConfigSyslogfacilityOption(%struct.rewriteConfigState* %98)
  %100 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %101 = call i32 @rewriteConfigSaveOption(%struct.rewriteConfigState* %100)
  %102 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %103 = call i32 @rewriteConfigUserOption(%struct.rewriteConfigState* %102)
  %104 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 64), align 8
  %106 = load i32, i32* @CONFIG_DEFAULT_DBNUM, align 4
  %107 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 64), align 8
  %110 = load i32, i32* @CONFIG_DEFAULT_IO_THREADS_NUM, align 4
  %111 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 63), align 4
  %114 = load i32*, i32** @CONFIG_DEFAULT_RDB_FILENAME, align 8
  %115 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %113, i32* %114)
  %116 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %117 = call i32 @rewriteConfigDirOption(%struct.rewriteConfigState* %116)
  %118 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %119 = call i32 @rewriteConfigSlaveofOption(%struct.rewriteConfigState* %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %120 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 62), align 8
  %122 = load i32*, i32** @CONFIG_DEFAULT_SLAVE_ANNOUNCE_IP, align 8
  %123 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %121, i32* %122)
  %124 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 61), align 4
  %126 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 %125, i32* null)
  %127 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 60), align 8
  %129 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %128, i32* null)
  %130 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 59), align 4
  %132 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %131, i32* null)
  %133 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 58), align 8
  %135 = load i32, i32* @CONFIG_DEFAULT_REPL_PING_SLAVE_PERIOD, align 4
  %136 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %133, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 57), align 4
  %139 = load i32, i32* @CONFIG_DEFAULT_REPL_TIMEOUT, align 4
  %140 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32 %138, i32 %139)
  %141 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 56), align 8
  %143 = load i32, i32* @CONFIG_DEFAULT_REPL_BACKLOG_SIZE, align 4
  %144 = call i32 @rewriteConfigBytesOption(%struct.rewriteConfigState* %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 %142, i32 %143)
  %145 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 55), align 4
  %147 = load i32, i32* @CONFIG_DEFAULT_REPL_BACKLOG_TIME_LIMIT, align 4
  %148 = call i32 @rewriteConfigBytesOption(%struct.rewriteConfigState* %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i32 %146, i32 %147)
  %149 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 54), align 8
  %151 = load i32, i32* @repl_diskless_load_enum, align 4
  %152 = load i32, i32* @CONFIG_DEFAULT_REPL_DISKLESS_LOAD, align 4
  %153 = call i32 @rewriteConfigEnumOption(%struct.rewriteConfigState* %149, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i32 %150, i32 %151, i32 %152)
  %154 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 53), align 4
  %156 = load i32, i32* @CONFIG_DEFAULT_REPL_DISKLESS_SYNC_DELAY, align 4
  %157 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %154, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i32 %155, i32 %156)
  %158 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 52), align 8
  %160 = load i32, i32* @CONFIG_DEFAULT_SLAVE_PRIORITY, align 4
  %161 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %158, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i32 %159, i32 %160)
  %162 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 51), align 4
  %164 = load i32, i32* @CONFIG_DEFAULT_MIN_SLAVES_TO_WRITE, align 4
  %165 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i32 %163, i32 %164)
  %166 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 50), align 8
  %168 = load i32, i32* @CONFIG_DEFAULT_MIN_SLAVES_MAX_LAG, align 4
  %169 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %166, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0), i32 %167, i32 %168)
  %170 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %171 = call i32 @rewriteConfigRequirepassOption(%struct.rewriteConfigState* %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0))
  %172 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 49), align 4
  %174 = load i32, i32* @CONFIG_DEFAULT_MAX_CLIENTS, align 4
  %175 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i32 %173, i32 %174)
  %176 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 48), align 8
  %178 = load i32, i32* @CONFIG_DEFAULT_MAXMEMORY, align 4
  %179 = call i32 @rewriteConfigBytesOption(%struct.rewriteConfigState* %176, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i32 %177, i32 %178)
  %180 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 47), align 4
  %182 = load i32, i32* @CONFIG_DEFAULT_PROTO_MAX_BULK_LEN, align 4
  %183 = call i32 @rewriteConfigBytesOption(%struct.rewriteConfigState* %180, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i32 %181, i32 %182)
  %184 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 46), align 8
  %186 = load i32, i32* @PROTO_MAX_QUERYBUF_LEN, align 4
  %187 = call i32 @rewriteConfigBytesOption(%struct.rewriteConfigState* %184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i64 0, i64 0), i32 %185, i32 %186)
  %188 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 45), align 4
  %190 = load i32, i32* @maxmemory_policy_enum, align 4
  %191 = load i32, i32* @CONFIG_DEFAULT_MAXMEMORY_POLICY, align 4
  %192 = call i32 @rewriteConfigEnumOption(%struct.rewriteConfigState* %188, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i32 %189, i32 %190, i32 %191)
  %193 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 44), align 8
  %195 = load i32, i32* @CONFIG_DEFAULT_MAXMEMORY_SAMPLES, align 4
  %196 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %193, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0), i32 %194, i32 %195)
  %197 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 43), align 4
  %199 = load i32, i32* @CONFIG_DEFAULT_LFU_LOG_FACTOR, align 4
  %200 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %197, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i32 %198, i32 %199)
  %201 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 42), align 8
  %203 = load i32, i32* @CONFIG_DEFAULT_LFU_DECAY_TIME, align 4
  %204 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %201, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 %202, i32 %203)
  %205 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 41), align 4
  %207 = load i32, i32* @CONFIG_DEFAULT_DEFRAG_THRESHOLD_LOWER, align 4
  %208 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %205, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0), i32 %206, i32 %207)
  %209 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 40), align 8
  %211 = load i32, i32* @CONFIG_DEFAULT_DEFRAG_THRESHOLD_UPPER, align 4
  %212 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %209, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i64 0, i64 0), i32 %210, i32 %211)
  %213 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 39), align 4
  %215 = load i32, i32* @CONFIG_DEFAULT_DEFRAG_IGNORE_BYTES, align 4
  %216 = call i32 @rewriteConfigBytesOption(%struct.rewriteConfigState* %213, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0), i32 %214, i32 %215)
  %217 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %218 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 38), align 8
  %219 = load i32, i32* @CONFIG_DEFAULT_DEFRAG_CYCLE_MIN, align 4
  %220 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %217, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i64 0, i64 0), i32 %218, i32 %219)
  %221 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 37), align 4
  %223 = load i32, i32* @CONFIG_DEFAULT_DEFRAG_CYCLE_MAX, align 4
  %224 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %221, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i64 0, i64 0), i32 %222, i32 %223)
  %225 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %226 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 36), align 8
  %227 = load i32, i32* @CONFIG_DEFAULT_DEFRAG_MAX_SCAN_FIELDS, align 4
  %228 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %225, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i64 0, i64 0), i32 %226, i32 %227)
  %229 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %230 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 35), align 4
  %231 = call i32 @rewriteConfigYesNoOption(%struct.rewriteConfigState* %229, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0), i32 %230, i32 0)
  %232 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 34), align 8
  %234 = load i32*, i32** @CONFIG_DEFAULT_AOF_FILENAME, align 8
  %235 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %232, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i32 %233, i32* %234)
  %236 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %237 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 33), align 4
  %238 = load i32, i32* @aof_fsync_enum, align 4
  %239 = load i32, i32* @CONFIG_DEFAULT_AOF_FSYNC, align 4
  %240 = call i32 @rewriteConfigEnumOption(%struct.rewriteConfigState* %236, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i32 %237, i32 %238, i32 %239)
  %241 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 32), align 8
  %243 = load i32, i32* @AOF_REWRITE_PERC, align 4
  %244 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %241, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i64 0, i64 0), i32 %242, i32 %243)
  %245 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %246 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 31), align 4
  %247 = load i32, i32* @AOF_REWRITE_MIN_SIZE, align 4
  %248 = call i32 @rewriteConfigBytesOption(%struct.rewriteConfigState* %245, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i64 0, i64 0), i32 %246, i32 %247)
  %249 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %250 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 30), align 8
  %251 = load i32, i32* @LUA_SCRIPT_TIME_LIMIT, align 4
  %252 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %249, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0), i32 %250, i32 %251)
  %253 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %254 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 29), align 4
  %255 = call i32 @rewriteConfigYesNoOption(%struct.rewriteConfigState* %253, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0), i32 %254, i32 0)
  %256 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %257 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 28), align 8
  %258 = load i32*, i32** @CONFIG_DEFAULT_CLUSTER_CONFIG_FILE, align 8
  %259 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i64 0, i64 0), i32 %257, i32* %258)
  %260 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %261 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 27), align 4
  %262 = load i32, i32* @CLUSTER_DEFAULT_NODE_TIMEOUT, align 4
  %263 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %260, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i64 0, i64 0), i32 %261, i32 %262)
  %264 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %265 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 26), align 8
  %266 = load i32, i32* @CLUSTER_DEFAULT_MIGRATION_BARRIER, align 4
  %267 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %264, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i64 0, i64 0), i32 %265, i32 %266)
  %268 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %269 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 25), align 4
  %270 = load i32, i32* @CLUSTER_DEFAULT_SLAVE_VALIDITY, align 4
  %271 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %268, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i64 0, i64 0), i32 %269, i32 %270)
  %272 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %273 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 24), align 8
  %274 = load i32, i32* @CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN, align 4
  %275 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %272, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i64 0, i64 0), i32 %273, i32 %274)
  %276 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %277 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 23), align 4
  %278 = load i32, i32* @CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD, align 4
  %279 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %276, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i64 0, i64 0), i32 %277, i32 %278)
  %280 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %281 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 22), align 8
  %282 = load i32, i32* @CONFIG_DEFAULT_SLOWLOG_MAX_LEN, align 4
  %283 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %280, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i32 %281, i32 %282)
  %284 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %285 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 21), align 4
  %286 = load i32, i32* @CONFIG_DEFAULT_TRACKING_TABLE_MAX_FILL, align 4
  %287 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %284, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0), i32 %285, i32 %286)
  %288 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %289 = call i32 @rewriteConfigNotifykeyspaceeventsOption(%struct.rewriteConfigState* %288)
  %290 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %291 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 20), align 8
  %292 = load i32, i32* @OBJ_HASH_MAX_ZIPLIST_ENTRIES, align 4
  %293 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %290, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.62, i64 0, i64 0), i32 %291, i32 %292)
  %294 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %295 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 19), align 4
  %296 = load i32, i32* @OBJ_HASH_MAX_ZIPLIST_VALUE, align 4
  %297 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %294, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i64 0, i64 0), i32 %295, i32 %296)
  %298 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %299 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 18), align 8
  %300 = load i32, i32* @OBJ_STREAM_NODE_MAX_BYTES, align 4
  %301 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %298, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.64, i64 0, i64 0), i32 %299, i32 %300)
  %302 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %303 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 17), align 4
  %304 = load i32, i32* @OBJ_STREAM_NODE_MAX_ENTRIES, align 4
  %305 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %302, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i64 0, i64 0), i32 %303, i32 %304)
  %306 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %307 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 16), align 8
  %308 = load i32, i32* @OBJ_LIST_MAX_ZIPLIST_SIZE, align 4
  %309 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %306, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i64 0, i64 0), i32 %307, i32 %308)
  %310 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %311 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 15), align 4
  %312 = load i32, i32* @OBJ_LIST_COMPRESS_DEPTH, align 4
  %313 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %310, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i64 0, i64 0), i32 %311, i32 %312)
  %314 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %315 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 14), align 8
  %316 = load i32, i32* @OBJ_SET_MAX_INTSET_ENTRIES, align 4
  %317 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %314, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i64 0, i64 0), i32 %315, i32 %316)
  %318 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %319 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 13), align 4
  %320 = load i32, i32* @OBJ_ZSET_MAX_ZIPLIST_ENTRIES, align 4
  %321 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %318, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i64 0, i64 0), i32 %319, i32 %320)
  %322 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %323 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 12), align 8
  %324 = load i32, i32* @OBJ_ZSET_MAX_ZIPLIST_VALUE, align 4
  %325 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %322, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.70, i64 0, i64 0), i32 %323, i32 %324)
  %326 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %327 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 11), align 4
  %328 = load i32, i32* @CONFIG_DEFAULT_HLL_SPARSE_MAX_BYTES, align 4
  %329 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %326, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.71, i64 0, i64 0), i32 %327, i32 %328)
  %330 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %331 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 10), align 8
  %332 = load i32, i32* @CONFIG_DEFAULT_ACTIVE_DEFRAG, align 4
  %333 = call i32 @rewriteConfigYesNoOption(%struct.rewriteConfigState* %330, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i64 0, i64 0), i32 %331, i32 %332)
  %334 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %335 = call i32 @rewriteConfigClientoutputbufferlimitOption(%struct.rewriteConfigState* %334)
  %336 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %337 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 9), align 4
  %338 = load i32, i32* @CONFIG_DEFAULT_HZ, align 4
  %339 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %336, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i32 %337, i32 %338)
  %340 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %341 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 8), align 8
  %342 = load i32, i32* @supervised_mode_enum, align 4
  %343 = load i32, i32* @SUPERVISED_NONE, align 4
  %344 = call i32 @rewriteConfigEnumOption(%struct.rewriteConfigState* %340, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i64 0, i64 0), i32 %341, i32 %342, i32 %343)
  %345 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %346 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 7), align 4
  %347 = load i32, i32* @CONFIG_DEFAULT_RDB_KEY_SAVE_DELAY, align 4
  %348 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %345, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i64 0, i64 0), i32 %346, i32 %347)
  %349 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %350 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 6), align 8
  %351 = load i32, i32* @CONFIG_DEFAULT_KEY_LOAD_DELAY, align 4
  %352 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %349, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i64 0, i64 0), i32 %350, i32 %351)
  %353 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %35
  %356 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %357 = call i32 @rewriteConfigSentinelOption(%struct.rewriteConfigState* %356)
  br label %358

358:                                              ; preds = %355, %35
  %359 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %360 = call i32 @rewriteConfigRemoveOrphaned(%struct.rewriteConfigState* %359)
  %361 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %362 = call i32 @rewriteConfigGetContentFromState(%struct.rewriteConfigState* %361)
  store i32 %362, i32* %5, align 4
  %363 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %364 = load i32, i32* %5, align 4
  %365 = call i32 @rewriteConfigOverwriteFile(i32 %363, i32 %364)
  store i32 %365, i32* %6, align 4
  %366 = load i32, i32* %5, align 4
  %367 = call i32 @sdsfree(i32 %366)
  %368 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %369 = call i32 @rewriteConfigReleaseState(%struct.rewriteConfigState* %368)
  %370 = load i32, i32* %6, align 4
  store i32 %370, i32* %2, align 4
  br label %371

371:                                              ; preds = %358, %11
  %372 = load i32, i32* %2, align 4
  ret i32 %372
}

declare dso_local %struct.rewriteConfigState* @rewriteConfigReadOldFile(i8*) #1

declare dso_local i32 @rewriteConfigYesNoOption(%struct.rewriteConfigState*, i8*, i32, i32) #1

declare dso_local i32 @rewriteConfigStringOption(%struct.rewriteConfigState*, i8*, i32, i32*) #1

declare dso_local i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState*, i8*, i32, i32) #1

declare dso_local i32 @rewriteConfigBindOption(%struct.rewriteConfigState*) #1

declare dso_local i32 @rewriteConfigOctalOption(%struct.rewriteConfigState*, i8*, i32, i32) #1

declare dso_local i32 @rewriteConfigEnumOption(%struct.rewriteConfigState*, i8*, i32, i32, i32) #1

declare dso_local i32 @rewriteConfigSyslogfacilityOption(%struct.rewriteConfigState*) #1

declare dso_local i32 @rewriteConfigSaveOption(%struct.rewriteConfigState*) #1

declare dso_local i32 @rewriteConfigUserOption(%struct.rewriteConfigState*) #1

declare dso_local i32 @rewriteConfigDirOption(%struct.rewriteConfigState*) #1

declare dso_local i32 @rewriteConfigSlaveofOption(%struct.rewriteConfigState*, i8*) #1

declare dso_local i32 @rewriteConfigBytesOption(%struct.rewriteConfigState*, i8*, i32, i32) #1

declare dso_local i32 @rewriteConfigRequirepassOption(%struct.rewriteConfigState*, i8*) #1

declare dso_local i32 @rewriteConfigNotifykeyspaceeventsOption(%struct.rewriteConfigState*) #1

declare dso_local i32 @rewriteConfigClientoutputbufferlimitOption(%struct.rewriteConfigState*) #1

declare dso_local i32 @rewriteConfigSentinelOption(%struct.rewriteConfigState*) #1

declare dso_local i32 @rewriteConfigRemoveOrphaned(%struct.rewriteConfigState*) #1

declare dso_local i32 @rewriteConfigGetContentFromState(%struct.rewriteConfigState*) #1

declare dso_local i32 @rewriteConfigOverwriteFile(i32, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @rewriteConfigReleaseState(%struct.rewriteConfigState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
