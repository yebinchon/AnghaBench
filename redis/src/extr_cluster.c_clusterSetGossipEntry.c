
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int ping_sent; int pong_received; int flags; int cport; int port; int ip; int name; } ;
typedef TYPE_3__ clusterNode ;
struct TYPE_11__ {scalar_t__ notused1; void* flags; void* cport; void* port; int ip; void* pong_received; void* ping_sent; int nodename; } ;
typedef TYPE_4__ clusterMsgDataGossip ;
struct TYPE_8__ {TYPE_4__* gossip; } ;
struct TYPE_9__ {TYPE_1__ ping; } ;
struct TYPE_12__ {TYPE_2__ data; } ;
typedef TYPE_5__ clusterMsg ;


 int CLUSTER_NAMELEN ;
 void* htonl (int) ;
 void* htons (int ) ;
 int memcpy (int ,int ,int) ;

void clusterSetGossipEntry(clusterMsg *hdr, int i, clusterNode *n) {
    clusterMsgDataGossip *gossip;
    gossip = &(hdr->data.ping.gossip[i]);
    memcpy(gossip->nodename,n->name,CLUSTER_NAMELEN);
    gossip->ping_sent = htonl(n->ping_sent/1000);
    gossip->pong_received = htonl(n->pong_received/1000);
    memcpy(gossip->ip,n->ip,sizeof(n->ip));
    gossip->port = htons(n->port);
    gossip->cport = htons(n->cport);
    gossip->flags = htons(n->flags);
    gossip->notused1 = 0;
}
