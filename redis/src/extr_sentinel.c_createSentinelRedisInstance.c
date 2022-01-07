
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int slavename ;
struct TYPE_7__ {int flags; char* name; int quorum; int role_reported; void* slave_conf_change_time; void* role_reported_time; int * info; int * client_reconfig_script; int * notification_script; int * promoted_slave; scalar_t__ failover_delay_logged; int failover_timeout; scalar_t__ failover_start_time; scalar_t__ failover_state_change_time; int failover_state; scalar_t__ failover_epoch; scalar_t__ leader_epoch; int * leader; void* renamed_commands; scalar_t__ info_refresh; int * slaves; struct TYPE_7__* master; int parallel_syncs; int * sentinels; scalar_t__ slave_repl_offset; int slave_master_link_status; scalar_t__ slave_master_port; int * slave_master_host; scalar_t__ slave_reconf_sent_time; int slave_priority; int * auth_pass; scalar_t__ master_link_down_time; int down_after_period; scalar_t__ o_down_since_time; scalar_t__ s_down_since_time; void* last_master_down_reply_time; void* last_hello_time; void* last_pub_time; int link; int * addr; scalar_t__ config_epoch; int * runid; } ;
typedef TYPE_1__ sentinelRedisInstance ;
typedef int sentinelAddr ;
typedef int dict ;
struct TYPE_8__ {int * masters; } ;


 int EBUSY ;
 int NET_PEER_ID_LEN ;
 int SENTINEL_DEFAULT_DOWN_AFTER ;
 int SENTINEL_DEFAULT_FAILOVER_TIMEOUT ;
 int SENTINEL_DEFAULT_PARALLEL_SYNCS ;
 int SENTINEL_DEFAULT_SLAVE_PRIORITY ;
 int SENTINEL_FAILOVER_STATE_NONE ;
 int SENTINEL_MASTER_LINK_STATUS_DOWN ;
 int SRI_MASTER ;
 int SRI_SENTINEL ;
 int SRI_SLAVE ;
 int anetFormatAddr (char*,int,char*,int) ;
 int createInstanceLink () ;
 int * createSentinelAddr (char*,int) ;
 int dictAdd (int *,char*,TYPE_1__*) ;
 void* dictCreate (int *,int *) ;
 scalar_t__ dictFind (int *,char*) ;
 int errno ;
 int instancesDictType ;
 void* mstime () ;
 int releaseSentinelAddr (int *) ;
 int renamedCommandsDictType ;
 int sdsfree (char*) ;
 char* sdsnew (char*) ;
 TYPE_3__ sentinel ;
 int serverAssert (int) ;
 TYPE_1__* zmalloc (int) ;

sentinelRedisInstance *createSentinelRedisInstance(char *name, int flags, char *hostname, int port, int quorum, sentinelRedisInstance *master) {
    sentinelRedisInstance *ri;
    sentinelAddr *addr;
    dict *table = ((void*)0);
    char slavename[NET_PEER_ID_LEN], *sdsname;

    serverAssert(flags & (SRI_MASTER|SRI_SLAVE|SRI_SENTINEL));
    serverAssert((flags & SRI_MASTER) || master != ((void*)0));


    addr = createSentinelAddr(hostname,port);
    if (addr == ((void*)0)) return ((void*)0);


    if (flags & SRI_SLAVE) {
        anetFormatAddr(slavename, sizeof(slavename), hostname, port);
        name = slavename;
    }





    if (flags & SRI_MASTER) table = sentinel.masters;
    else if (flags & SRI_SLAVE) table = master->slaves;
    else if (flags & SRI_SENTINEL) table = master->sentinels;
    sdsname = sdsnew(name);
    if (dictFind(table,sdsname)) {
        releaseSentinelAddr(addr);
        sdsfree(sdsname);
        errno = EBUSY;
        return ((void*)0);
    }


    ri = zmalloc(sizeof(*ri));


    ri->flags = flags;
    ri->name = sdsname;
    ri->runid = ((void*)0);
    ri->config_epoch = 0;
    ri->addr = addr;
    ri->link = createInstanceLink();
    ri->last_pub_time = mstime();
    ri->last_hello_time = mstime();
    ri->last_master_down_reply_time = mstime();
    ri->s_down_since_time = 0;
    ri->o_down_since_time = 0;
    ri->down_after_period = master ? master->down_after_period :
                            SENTINEL_DEFAULT_DOWN_AFTER;
    ri->master_link_down_time = 0;
    ri->auth_pass = ((void*)0);
    ri->slave_priority = SENTINEL_DEFAULT_SLAVE_PRIORITY;
    ri->slave_reconf_sent_time = 0;
    ri->slave_master_host = ((void*)0);
    ri->slave_master_port = 0;
    ri->slave_master_link_status = SENTINEL_MASTER_LINK_STATUS_DOWN;
    ri->slave_repl_offset = 0;
    ri->sentinels = dictCreate(&instancesDictType,((void*)0));
    ri->quorum = quorum;
    ri->parallel_syncs = SENTINEL_DEFAULT_PARALLEL_SYNCS;
    ri->master = master;
    ri->slaves = dictCreate(&instancesDictType,((void*)0));
    ri->info_refresh = 0;
    ri->renamed_commands = dictCreate(&renamedCommandsDictType,((void*)0));


    ri->leader = ((void*)0);
    ri->leader_epoch = 0;
    ri->failover_epoch = 0;
    ri->failover_state = SENTINEL_FAILOVER_STATE_NONE;
    ri->failover_state_change_time = 0;
    ri->failover_start_time = 0;
    ri->failover_timeout = SENTINEL_DEFAULT_FAILOVER_TIMEOUT;
    ri->failover_delay_logged = 0;
    ri->promoted_slave = ((void*)0);
    ri->notification_script = ((void*)0);
    ri->client_reconfig_script = ((void*)0);
    ri->info = ((void*)0);


    ri->role_reported = ri->flags & (SRI_MASTER|SRI_SLAVE);
    ri->role_reported_time = mstime();
    ri->slave_conf_change_time = mstime();


    dictAdd(table, ri->name, ri);
    return ri;
}
