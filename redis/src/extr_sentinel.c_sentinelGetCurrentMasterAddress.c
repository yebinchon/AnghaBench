
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; scalar_t__ failover_state; int * addr; TYPE_1__* promoted_slave; } ;
typedef TYPE_2__ sentinelRedisInstance ;
typedef int sentinelAddr ;
struct TYPE_4__ {int * addr; } ;


 scalar_t__ SENTINEL_FAILOVER_STATE_RECONF_SLAVES ;
 int SRI_FAILOVER_IN_PROGRESS ;

sentinelAddr *sentinelGetCurrentMasterAddress(sentinelRedisInstance *master) {





    if ((master->flags & SRI_FAILOVER_IN_PROGRESS) &&
        master->promoted_slave &&
        master->failover_state >= SENTINEL_FAILOVER_STATE_RECONF_SLAVES)
    {
        return master->promoted_slave->addr;
    } else {
        return master->addr;
    }
}
