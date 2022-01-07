
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ last_pub_time; int slaves; int sentinels; } ;
typedef TYPE_1__ sentinelRedisInstance ;


 int C_ERR ;
 int C_OK ;
 scalar_t__ SENTINEL_PUBLISH_PERIOD ;
 int SRI_MASTER ;
 int sentinelForceHelloUpdateDictOfRedisInstances (int ) ;

int sentinelForceHelloUpdateForMaster(sentinelRedisInstance *master) {
    if (!(master->flags & SRI_MASTER)) return C_ERR;
    if (master->last_pub_time >= (SENTINEL_PUBLISH_PERIOD+1))
        master->last_pub_time -= (SENTINEL_PUBLISH_PERIOD+1);
    sentinelForceHelloUpdateDictOfRedisInstances(master->sentinels);
    sentinelForceHelloUpdateDictOfRedisInstances(master->slaves);
    return C_OK;
}
