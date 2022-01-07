
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int name; } ;
typedef TYPE_4__ clusterNode ;
struct TYPE_9__ {TYPE_1__* gossip; } ;
struct TYPE_10__ {TYPE_2__ ping; } ;
struct TYPE_12__ {TYPE_3__ data; } ;
typedef TYPE_5__ clusterMsg ;
struct TYPE_8__ {int nodename; } ;


 int CLUSTER_NAMELEN ;
 scalar_t__ memcmp (int ,int ,int ) ;

int clusterNodeIsInGossipSection(clusterMsg *hdr, int count, clusterNode *n) {
    int j;
    for (j = 0; j < count; j++) {
        if (memcmp(hdr->data.ping.gossip[j].nodename,n->name,
                CLUSTER_NAMELEN) == 0) break;
    }
    return j != count;
}
