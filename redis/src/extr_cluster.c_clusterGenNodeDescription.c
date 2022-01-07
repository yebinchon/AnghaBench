
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sds ;
struct TYPE_13__ {int flags; scalar_t__ link; scalar_t__ configEpoch; scalar_t__ pong_received; scalar_t__ ping_sent; TYPE_1__* slaveof; int cport; int port; int ip; int name; } ;
typedef TYPE_5__ clusterNode ;
struct TYPE_14__ {TYPE_4__* cluster; } ;
struct TYPE_12__ {TYPE_3__** importing_slots_from; TYPE_2__** migrating_slots_to; } ;
struct TYPE_11__ {int name; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {int name; } ;


 int CLUSTER_NODE_MYSELF ;
 int CLUSTER_SLOTS ;
 int clusterNodeGetSlotBit (TYPE_5__*,int) ;
 int representClusterNodeFlags (int ,int) ;
 int sdscatlen (int ,char*,int) ;
 int sdscatprintf (int ,char*,int,...) ;
 int sdsempty () ;
 TYPE_6__ server ;

sds clusterGenNodeDescription(clusterNode *node) {
    int j, start;
    sds ci;


    ci = sdscatprintf(sdsempty(),"%.40s %s:%d@%d ",
        node->name,
        node->ip,
        node->port,
        node->cport);


    ci = representClusterNodeFlags(ci, node->flags);


    if (node->slaveof)
        ci = sdscatprintf(ci," %.40s ",node->slaveof->name);
    else
        ci = sdscatlen(ci," - ",3);


    ci = sdscatprintf(ci,"%lld %lld %llu %s",
        (long long) node->ping_sent,
        (long long) node->pong_received,
        (unsigned long long) node->configEpoch,
        (node->link || node->flags & CLUSTER_NODE_MYSELF) ?
                    "connected" : "disconnected");


    start = -1;
    for (j = 0; j < CLUSTER_SLOTS; j++) {
        int bit;

        if ((bit = clusterNodeGetSlotBit(node,j)) != 0) {
            if (start == -1) start = j;
        }
        if (start != -1 && (!bit || j == CLUSTER_SLOTS-1)) {
            if (bit && j == CLUSTER_SLOTS-1) j++;

            if (start == j-1) {
                ci = sdscatprintf(ci," %d",start);
            } else {
                ci = sdscatprintf(ci," %d-%d",start,j-1);
            }
            start = -1;
        }
    }




    if (node->flags & CLUSTER_NODE_MYSELF) {
        for (j = 0; j < CLUSTER_SLOTS; j++) {
            if (server.cluster->migrating_slots_to[j]) {
                ci = sdscatprintf(ci," [%d->-%.40s]",j,
                    server.cluster->migrating_slots_to[j]->name);
            } else if (server.cluster->importing_slots_from[j]) {
                ci = sdscatprintf(ci," [%d-<-%.40s]",j,
                    server.cluster->importing_slots_from[j]->name);
            }
        }
    }
    return ci;
}
