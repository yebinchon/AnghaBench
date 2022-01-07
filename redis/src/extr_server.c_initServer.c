
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int redisDb ;
struct TYPE_6__ {scalar_t__ allocator_resident; scalar_t__ allocator_active; scalar_t__ allocator_allocated; scalar_t__ process_rss; scalar_t__ zmalloc_used; } ;
struct TYPE_5__ {scalar_t__ magic; } ;
struct TYPE_8__ {int slaveseldb; scalar_t__ tls_port; int dbnum; scalar_t__ port; scalar_t__* ipfd; int ipfd_count; scalar_t__* tlsfd; int tlsfd_count; scalar_t__ sofd; int rdb_child_pid; int aof_child_pid; int module_child_pid; int* child_info_pipe; int rdb_save_time_last; int rdb_save_time_start; scalar_t__* module_blocked_pipe; scalar_t__ aof_state; int aof_fd; int arch_bits; long long maxmemory; scalar_t__ cluster_enabled; int maxmemory_policy; int aof_filename; int * el; scalar_t__ repl_good_slaves_count; scalar_t__ aof_last_write_errno; void* aof_last_write_status; void* lastbgsave_status; TYPE_2__ cron_malloc_stats; scalar_t__ stat_module_cow_bytes; scalar_t__ stat_aof_cow_bytes; scalar_t__ stat_rdb_cow_bytes; scalar_t__ stat_peak_memory; void* stat_starttime; scalar_t__ dirty; scalar_t__ lastbgsave_try; void* lastsave; int aof_buf; TYPE_1__ child_info_data; scalar_t__ rdb_bgsave_scheduled; scalar_t__ rdb_pipe_bufflen; int * rdb_pipe_buff; scalar_t__ rdb_pipe_numconns_writing; scalar_t__ rdb_pipe_numconns; int * rdb_pipe_conns; int rdb_child_type; scalar_t__ cronloops; void* pubsub_patterns; void* pubsub_channels; TYPE_3__* db; int neterr; int tcp_backlog; int unixsocketperm; int * unixsocket; scalar_t__ maxclients; int tls_ctx_config; int system_memory_size; scalar_t__ clients_paused; scalar_t__ get_ack_from_slaves; void* clients_waiting_acks; void* ready_keys; void* unblocked_clients; void* clients_pending_read; void* clients_pending_write; void* monitors; void* slaves; void* clients_to_close; int clients_index; void* clients; scalar_t__ call_depth; int * current_client; int pid; int config_hz; int hz; int syslog_facility; int syslog_ident; scalar_t__ syslog_enabled; } ;
struct TYPE_7__ {int id; void* defrag_later; scalar_t__ avg_ttl; void* watched_keys; void* ready_keys; void* blocking_keys; void* expires; void* dict; } ;


 scalar_t__ AE_ERR ;
 int AE_READABLE ;
 scalar_t__ ANET_ERR ;
 scalar_t__ AOF_ON ;
 scalar_t__ CONFIG_FDSET_INCR ;
 scalar_t__ C_ERR ;
 void* C_OK ;
 int LL_WARNING ;
 int LOG_NDELAY ;
 int LOG_NOWAIT ;
 int LOG_PID ;
 int MAXMEMORY_NO_EVICTION ;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int RDB_CHILD_TYPE_NONE ;
 int SIGHUP ;
 int SIGPIPE ;
 int SIG_IGN ;
 int acceptTLSHandler ;
 int acceptTcpHandler ;
 int acceptUnixHandler ;
 int adjustOpenFilesLimit () ;
 int * aeCreateEventLoop (scalar_t__) ;
 scalar_t__ aeCreateFileEvent (int *,scalar_t__,int ,int ,int *) ;
 scalar_t__ aeCreateTimeEvent (int *,int,int ,int *,int *) ;
 int anetNonBlock (int *,scalar_t__) ;
 scalar_t__ anetUnixServer (int ,int *,int ,int ) ;
 int aofRewriteBufferReset () ;
 int clusterInit () ;
 int createSharedObjects () ;
 int dbDictType ;
 void* dictCreate (int *,int *) ;
 int errno ;
 int evictionPoolAlloc () ;
 int exit (int) ;
 int freePubsubPattern ;
 int getpid () ;
 int keylistDictType ;
 int keyptrDictType ;
 int latencyMonitorInit () ;
 void* listCreate () ;
 int listMatchPubsubPattern ;
 int listSetFreeMethod (void*,int ) ;
 int listSetMatchMethod (void*,int ) ;
 scalar_t__ listenToPort (scalar_t__,scalar_t__*,int*) ;
 int moduleBlockedClientPipeReadable ;
 int objectKeyPointerValueDictType ;
 int open (int ,int,int) ;
 int openlog (int ,int,int ) ;
 int raxNew () ;
 int replicationScriptCacheInit () ;
 int resetServerStats () ;
 int scriptingInit (int) ;
 int sdsempty () ;
 TYPE_4__ server ;
 int serverCron ;
 int serverLog (int ,char*,...) ;
 int serverPanic (char*) ;
 int setupSignalHandlers () ;
 int signal (int ,int ) ;
 int slowlogInit () ;
 int strerror (int ) ;
 void* time (int *) ;
 scalar_t__ tlsConfigure (int *) ;
 int unlink (int *) ;
 TYPE_3__* zmalloc (int) ;
 int zmalloc_get_memory_size () ;

void initServer(void) {
    int j;

    signal(SIGHUP, SIG_IGN);
    signal(SIGPIPE, SIG_IGN);
    setupSignalHandlers();

    if (server.syslog_enabled) {
        openlog(server.syslog_ident, LOG_PID | LOG_NDELAY | LOG_NOWAIT,
            server.syslog_facility);
    }

    server.hz = server.config_hz;
    server.pid = getpid();
    server.current_client = ((void*)0);
    server.call_depth = 0;
    server.clients = listCreate();
    server.clients_index = raxNew();
    server.clients_to_close = listCreate();
    server.slaves = listCreate();
    server.monitors = listCreate();
    server.clients_pending_write = listCreate();
    server.clients_pending_read = listCreate();
    server.slaveseldb = -1;
    server.unblocked_clients = listCreate();
    server.ready_keys = listCreate();
    server.clients_waiting_acks = listCreate();
    server.get_ack_from_slaves = 0;
    server.clients_paused = 0;
    server.system_memory_size = zmalloc_get_memory_size();

    if (server.tls_port && tlsConfigure(&server.tls_ctx_config) == C_ERR) {
        serverLog(LL_WARNING, "Failed to configure TLS. Check logs for more info.");
        exit(1);
    }

    createSharedObjects();
    adjustOpenFilesLimit();
    server.el = aeCreateEventLoop(server.maxclients+CONFIG_FDSET_INCR);
    if (server.el == ((void*)0)) {
        serverLog(LL_WARNING,
            "Failed creating the event loop. Error message: '%s'",
            strerror(errno));
        exit(1);
    }
    server.db = zmalloc(sizeof(redisDb)*server.dbnum);


    if (server.port != 0 &&
        listenToPort(server.port,server.ipfd,&server.ipfd_count) == C_ERR)
        exit(1);
    if (server.tls_port != 0 &&
        listenToPort(server.tls_port,server.tlsfd,&server.tlsfd_count) == C_ERR)
        exit(1);


    if (server.unixsocket != ((void*)0)) {
        unlink(server.unixsocket);
        server.sofd = anetUnixServer(server.neterr,server.unixsocket,
            server.unixsocketperm, server.tcp_backlog);
        if (server.sofd == ANET_ERR) {
            serverLog(LL_WARNING, "Opening Unix socket: %s", server.neterr);
            exit(1);
        }
        anetNonBlock(((void*)0),server.sofd);
    }


    if (server.ipfd_count == 0 && server.tlsfd_count == 0 && server.sofd < 0) {
        serverLog(LL_WARNING, "Configured to not listen anywhere, exiting.");
        exit(1);
    }


    for (j = 0; j < server.dbnum; j++) {
        server.db[j].dict = dictCreate(&dbDictType,((void*)0));
        server.db[j].expires = dictCreate(&keyptrDictType,((void*)0));
        server.db[j].blocking_keys = dictCreate(&keylistDictType,((void*)0));
        server.db[j].ready_keys = dictCreate(&objectKeyPointerValueDictType,((void*)0));
        server.db[j].watched_keys = dictCreate(&keylistDictType,((void*)0));
        server.db[j].id = j;
        server.db[j].avg_ttl = 0;
        server.db[j].defrag_later = listCreate();
    }
    evictionPoolAlloc();
    server.pubsub_channels = dictCreate(&keylistDictType,((void*)0));
    server.pubsub_patterns = listCreate();
    listSetFreeMethod(server.pubsub_patterns,freePubsubPattern);
    listSetMatchMethod(server.pubsub_patterns,listMatchPubsubPattern);
    server.cronloops = 0;
    server.rdb_child_pid = -1;
    server.aof_child_pid = -1;
    server.module_child_pid = -1;
    server.rdb_child_type = RDB_CHILD_TYPE_NONE;
    server.rdb_pipe_conns = ((void*)0);
    server.rdb_pipe_numconns = 0;
    server.rdb_pipe_numconns_writing = 0;
    server.rdb_pipe_buff = ((void*)0);
    server.rdb_pipe_bufflen = 0;
    server.rdb_bgsave_scheduled = 0;
    server.child_info_pipe[0] = -1;
    server.child_info_pipe[1] = -1;
    server.child_info_data.magic = 0;
    aofRewriteBufferReset();
    server.aof_buf = sdsempty();
    server.lastsave = time(((void*)0));
    server.lastbgsave_try = 0;
    server.rdb_save_time_last = -1;
    server.rdb_save_time_start = -1;
    server.dirty = 0;
    resetServerStats();

    server.stat_starttime = time(((void*)0));
    server.stat_peak_memory = 0;
    server.stat_rdb_cow_bytes = 0;
    server.stat_aof_cow_bytes = 0;
    server.stat_module_cow_bytes = 0;
    server.cron_malloc_stats.zmalloc_used = 0;
    server.cron_malloc_stats.process_rss = 0;
    server.cron_malloc_stats.allocator_allocated = 0;
    server.cron_malloc_stats.allocator_active = 0;
    server.cron_malloc_stats.allocator_resident = 0;
    server.lastbgsave_status = C_OK;
    server.aof_last_write_status = C_OK;
    server.aof_last_write_errno = 0;
    server.repl_good_slaves_count = 0;




    if (aeCreateTimeEvent(server.el, 1, serverCron, ((void*)0), ((void*)0)) == AE_ERR) {
        serverPanic("Can't create event loop timers.");
        exit(1);
    }



    for (j = 0; j < server.ipfd_count; j++) {
        if (aeCreateFileEvent(server.el, server.ipfd[j], AE_READABLE,
            acceptTcpHandler,((void*)0)) == AE_ERR)
            {
                serverPanic(
                    "Unrecoverable error creating server.ipfd file event.");
            }
    }
    for (j = 0; j < server.tlsfd_count; j++) {
        if (aeCreateFileEvent(server.el, server.tlsfd[j], AE_READABLE,
            acceptTLSHandler,((void*)0)) == AE_ERR)
            {
                serverPanic(
                    "Unrecoverable error creating server.tlsfd file event.");
            }
    }
    if (server.sofd > 0 && aeCreateFileEvent(server.el,server.sofd,AE_READABLE,
        acceptUnixHandler,((void*)0)) == AE_ERR) serverPanic("Unrecoverable error creating server.sofd file event.");




    if (aeCreateFileEvent(server.el, server.module_blocked_pipe[0], AE_READABLE,
        moduleBlockedClientPipeReadable,((void*)0)) == AE_ERR) {
            serverPanic(
                "Error registering the readable event for the module "
                "blocked clients subsystem.");
    }


    if (server.aof_state == AOF_ON) {
        server.aof_fd = open(server.aof_filename,
                               O_WRONLY|O_APPEND|O_CREAT,0644);
        if (server.aof_fd == -1) {
            serverLog(LL_WARNING, "Can't open the append-only file: %s",
                strerror(errno));
            exit(1);
        }
    }





    if (server.arch_bits == 32 && server.maxmemory == 0) {
        serverLog(LL_WARNING,"Warning: 32 bit instance detected but no memory limit set. Setting 3 GB maxmemory limit with 'noeviction' policy now.");
        server.maxmemory = 3072LL*(1024*1024);
        server.maxmemory_policy = MAXMEMORY_NO_EVICTION;
    }

    if (server.cluster_enabled) clusterInit();
    replicationScriptCacheInit();
    scriptingInit(1);
    slowlogInit();
    latencyMonitorInit();
}
