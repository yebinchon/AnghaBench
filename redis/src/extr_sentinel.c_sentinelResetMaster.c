
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int role_reported; void* role_reported_time; TYPE_4__* link; int * slave_master_host; int * runid; int * promoted_slave; scalar_t__ failover_start_time; scalar_t__ failover_state_change_time; int failover_state; int * leader; void* sentinels; void* slaves; } ;
typedef TYPE_1__ sentinelRedisInstance ;
struct TYPE_6__ {void* last_pong_time; void* last_avail_time; scalar_t__ last_ping_time; void* act_ping_time; int pc; int cc; } ;


 int LL_WARNING ;
 int SENTINEL_FAILOVER_STATE_NONE ;
 int SENTINEL_GENERATE_EVENT ;
 int SENTINEL_RESET_NO_SENTINELS ;
 int SRI_MASTER ;
 void* dictCreate (int *,int *) ;
 int dictRelease (void*) ;
 int instanceLinkCloseConnection (TYPE_4__*,int ) ;
 int instancesDictType ;
 void* mstime () ;
 int sdsfree (int *) ;
 int sentinelEvent (int ,char*,TYPE_1__*,char*) ;
 int serverAssert (int) ;

void sentinelResetMaster(sentinelRedisInstance *ri, int flags) {
    serverAssert(ri->flags & SRI_MASTER);
    dictRelease(ri->slaves);
    ri->slaves = dictCreate(&instancesDictType,((void*)0));
    if (!(flags & SENTINEL_RESET_NO_SENTINELS)) {
        dictRelease(ri->sentinels);
        ri->sentinels = dictCreate(&instancesDictType,((void*)0));
    }
    instanceLinkCloseConnection(ri->link,ri->link->cc);
    instanceLinkCloseConnection(ri->link,ri->link->pc);
    ri->flags &= SRI_MASTER;
    if (ri->leader) {
        sdsfree(ri->leader);
        ri->leader = ((void*)0);
    }
    ri->failover_state = SENTINEL_FAILOVER_STATE_NONE;
    ri->failover_state_change_time = 0;
    ri->failover_start_time = 0;
    ri->promoted_slave = ((void*)0);
    sdsfree(ri->runid);
    sdsfree(ri->slave_master_host);
    ri->runid = ((void*)0);
    ri->slave_master_host = ((void*)0);
    ri->link->act_ping_time = mstime();
    ri->link->last_ping_time = 0;
    ri->link->last_avail_time = mstime();
    ri->link->last_pong_time = mstime();
    ri->role_reported_time = mstime();
    ri->role_reported = SRI_MASTER;
    if (flags & SENTINEL_GENERATE_EVENT)
        sentinelEvent(LL_WARNING,"+reset-master",ri,"%@");
}
