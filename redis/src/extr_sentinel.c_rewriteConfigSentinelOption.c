
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct rewriteConfigState {int dummy; } ;
struct TYPE_8__ {scalar_t__ down_after_period; scalar_t__ failover_timeout; long notification_script; long client_reconfig_script; long auth_pass; int name; int renamed_commands; int * runid; TYPE_2__* addr; int sentinels; int slaves; scalar_t__ leader_epoch; scalar_t__ config_epoch; int parallel_syncs; int quorum; } ;
typedef TYPE_1__ sentinelRedisInstance ;
struct TYPE_9__ {int port; int ip; } ;
typedef TYPE_2__ sentinelAddr ;
typedef void* sds ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_10__ {unsigned long long myid; scalar_t__ deny_scripts_reconfig; unsigned long long announce_port; scalar_t__ announce_ip; scalar_t__ current_epoch; int masters; } ;


 scalar_t__ SENTINEL_DEFAULT_DENY_SCRIPTS_RECONFIG ;
 scalar_t__ SENTINEL_DEFAULT_DOWN_AFTER ;
 scalar_t__ SENTINEL_DEFAULT_FAILOVER_TIMEOUT ;
 int SENTINEL_DEFAULT_PARALLEL_SYNCS ;
 int * dictGetIterator (int ) ;
 void* dictGetKey (int *) ;
 void* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int rewriteConfigRewriteLine (struct rewriteConfigState*,char*,void*,int) ;
 void* sdscatprintf (int ,char*,...) ;
 void* sdscatrepr (void*,scalar_t__,int ) ;
 int sdsempty () ;
 int sdslen (scalar_t__) ;
 void* sdsnew (char*) ;
 TYPE_7__ sentinel ;
 scalar_t__ sentinelAddrIsEqual (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* sentinelGetCurrentMasterAddress (TYPE_1__*) ;

void rewriteConfigSentinelOption(struct rewriteConfigState *state) {
    dictIterator *di, *di2;
    dictEntry *de;
    sds line;


    line = sdscatprintf(sdsempty(), "sentinel myid %s", sentinel.myid);
    rewriteConfigRewriteLine(state,"sentinel",line,1);


    line = sdscatprintf(sdsempty(), "sentinel deny-scripts-reconfig %s",
        sentinel.deny_scripts_reconfig ? "yes" : "no");
    rewriteConfigRewriteLine(state,"sentinel",line,
        sentinel.deny_scripts_reconfig != SENTINEL_DEFAULT_DENY_SCRIPTS_RECONFIG);


    di = dictGetIterator(sentinel.masters);
    while((de = dictNext(di)) != ((void*)0)) {
        sentinelRedisInstance *master, *ri;
        sentinelAddr *master_addr;


        master = dictGetVal(de);
        master_addr = sentinelGetCurrentMasterAddress(master);
        line = sdscatprintf(sdsempty(),"sentinel monitor %s %s %d %d",
            master->name, master_addr->ip, master_addr->port,
            master->quorum);
        rewriteConfigRewriteLine(state,"sentinel",line,1);


        if (master->down_after_period != SENTINEL_DEFAULT_DOWN_AFTER) {
            line = sdscatprintf(sdsempty(),
                "sentinel down-after-milliseconds %s %ld",
                master->name, (long) master->down_after_period);
            rewriteConfigRewriteLine(state,"sentinel",line,1);
        }


        if (master->failover_timeout != SENTINEL_DEFAULT_FAILOVER_TIMEOUT) {
            line = sdscatprintf(sdsempty(),
                "sentinel failover-timeout %s %ld",
                master->name, (long) master->failover_timeout);
            rewriteConfigRewriteLine(state,"sentinel",line,1);
        }


        if (master->parallel_syncs != SENTINEL_DEFAULT_PARALLEL_SYNCS) {
            line = sdscatprintf(sdsempty(),
                "sentinel parallel-syncs %s %d",
                master->name, master->parallel_syncs);
            rewriteConfigRewriteLine(state,"sentinel",line,1);
        }


        if (master->notification_script) {
            line = sdscatprintf(sdsempty(),
                "sentinel notification-script %s %s",
                master->name, master->notification_script);
            rewriteConfigRewriteLine(state,"sentinel",line,1);
        }


        if (master->client_reconfig_script) {
            line = sdscatprintf(sdsempty(),
                "sentinel client-reconfig-script %s %s",
                master->name, master->client_reconfig_script);
            rewriteConfigRewriteLine(state,"sentinel",line,1);
        }


        if (master->auth_pass) {
            line = sdscatprintf(sdsempty(),
                "sentinel auth-pass %s %s",
                master->name, master->auth_pass);
            rewriteConfigRewriteLine(state,"sentinel",line,1);
        }


        line = sdscatprintf(sdsempty(),
            "sentinel config-epoch %s %llu",
            master->name, (unsigned long long) master->config_epoch);
        rewriteConfigRewriteLine(state,"sentinel",line,1);


        line = sdscatprintf(sdsempty(),
            "sentinel leader-epoch %s %llu",
            master->name, (unsigned long long) master->leader_epoch);
        rewriteConfigRewriteLine(state,"sentinel",line,1);


        di2 = dictGetIterator(master->slaves);
        while((de = dictNext(di2)) != ((void*)0)) {
            sentinelAddr *slave_addr;

            ri = dictGetVal(de);
            slave_addr = ri->addr;






            if (sentinelAddrIsEqual(slave_addr,master_addr))
                slave_addr = master->addr;
            line = sdscatprintf(sdsempty(),
                "sentinel known-replica %s %s %d",
                master->name, slave_addr->ip, slave_addr->port);
            rewriteConfigRewriteLine(state,"sentinel",line,1);
        }
        dictReleaseIterator(di2);


        di2 = dictGetIterator(master->sentinels);
        while((de = dictNext(di2)) != ((void*)0)) {
            ri = dictGetVal(de);
            if (ri->runid == ((void*)0)) continue;
            line = sdscatprintf(sdsempty(),
                "sentinel known-sentinel %s %s %d %s",
                master->name, ri->addr->ip, ri->addr->port, ri->runid);
            rewriteConfigRewriteLine(state,"sentinel",line,1);
        }
        dictReleaseIterator(di2);


        di2 = dictGetIterator(master->renamed_commands);
        while((de = dictNext(di2)) != ((void*)0)) {
            sds oldname = dictGetKey(de);
            sds newname = dictGetVal(de);
            line = sdscatprintf(sdsempty(),
                "sentinel rename-command %s %s %s",
                master->name, oldname, newname);
            rewriteConfigRewriteLine(state,"sentinel",line,1);
        }
        dictReleaseIterator(di2);
    }


    line = sdscatprintf(sdsempty(),
        "sentinel current-epoch %llu", (unsigned long long) sentinel.current_epoch);
    rewriteConfigRewriteLine(state,"sentinel",line,1);


    if (sentinel.announce_ip) {
        line = sdsnew("sentinel announce-ip ");
        line = sdscatrepr(line, sentinel.announce_ip, sdslen(sentinel.announce_ip));
        rewriteConfigRewriteLine(state,"sentinel",line,1);
    }


    if (sentinel.announce_port) {
        line = sdscatprintf(sdsempty(),"sentinel announce-port %d",
                            sentinel.announce_port);
        rewriteConfigRewriteLine(state,"sentinel",line,1);
    }

    dictReleaseIterator(di);
}
