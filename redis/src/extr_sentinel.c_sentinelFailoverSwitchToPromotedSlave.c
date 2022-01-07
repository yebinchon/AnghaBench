
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* addr; int name; struct TYPE_7__* promoted_slave; } ;
typedef TYPE_2__ sentinelRedisInstance ;
struct TYPE_6__ {int port; int ip; } ;


 int LL_WARNING ;
 int sentinelEvent (int ,char*,TYPE_2__*,char*,int ,int ,int ,int ,int ) ;
 int sentinelResetMasterAndChangeAddress (TYPE_2__*,int ,int ) ;

void sentinelFailoverSwitchToPromotedSlave(sentinelRedisInstance *master) {
    sentinelRedisInstance *ref = master->promoted_slave ?
                                 master->promoted_slave : master;

    sentinelEvent(LL_WARNING,"+switch-master",master,"%s %s %d %s %d",
        master->name, master->addr->ip, master->addr->port,
        ref->addr->ip, ref->addr->port);

    sentinelResetMasterAndChangeAddress(master,ref->addr->ip,ref->addr->port);
}
