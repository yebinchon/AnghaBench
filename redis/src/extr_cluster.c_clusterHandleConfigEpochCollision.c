
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ configEpoch; int name; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_9__ {TYPE_1__* cluster; } ;
struct TYPE_7__ {scalar_t__ currentEpoch; } ;


 int CLUSTER_NAMELEN ;
 int LL_VERBOSE ;
 int clusterSaveConfigOrDie (int) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 TYPE_2__* myself ;
 int nodeIsMaster (TYPE_2__*) ;
 TYPE_3__ server ;
 int serverLog (int ,char*,int ,unsigned long long) ;

void clusterHandleConfigEpochCollision(clusterNode *sender) {

    if (sender->configEpoch != myself->configEpoch ||
        !nodeIsMaster(sender) || !nodeIsMaster(myself)) return;

    if (memcmp(sender->name,myself->name,CLUSTER_NAMELEN) <= 0) return;

    server.cluster->currentEpoch++;
    myself->configEpoch = server.cluster->currentEpoch;
    clusterSaveConfigOrDie(1);
    serverLog(LL_VERBOSE,
        "WARNING: configEpoch collision with node %.40s."
        " configEpoch set to %llu",
        sender->name,
        (unsigned long long) myself->configEpoch);
}
