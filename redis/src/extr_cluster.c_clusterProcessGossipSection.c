
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint16_t ;
typedef int sds ;
typedef int mstime_t ;
struct TYPE_21__ {scalar_t__ ping_sent; int pong_received; int flags; scalar_t__ port; scalar_t__ cport; int ip; scalar_t__ link; int name; } ;
typedef TYPE_3__ clusterNode ;
struct TYPE_22__ {int cport; int port; int ip; int nodename; int pong_received; int flags; } ;
typedef TYPE_4__ clusterMsgDataGossip ;
struct TYPE_19__ {scalar_t__ gossip; } ;
struct TYPE_20__ {TYPE_1__ ping; } ;
struct TYPE_23__ {int sender; TYPE_2__ data; int count; } ;
typedef TYPE_5__ clusterMsg ;
struct TYPE_24__ {TYPE_3__* node; } ;
typedef TYPE_6__ clusterLink ;
struct TYPE_25__ {scalar_t__ verbosity; int mstime; } ;


 int CLUSTER_NODE_FAIL ;
 int CLUSTER_NODE_NOADDR ;
 int CLUSTER_NODE_PFAIL ;
 scalar_t__ LL_DEBUG ;
 int LL_VERBOSE ;
 int NET_IP_STR_LEN ;
 int clusterBlacklistExists (int ) ;
 TYPE_3__* clusterLookupNode (int ) ;
 scalar_t__ clusterNodeAddFailureReport (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ clusterNodeDelFailureReport (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ clusterNodeFailureReportsCount (TYPE_3__*) ;
 int clusterStartHandshake (int ,scalar_t__,scalar_t__) ;
 int freeClusterLink (scalar_t__) ;
 int markNodeAsFailingIfNeeded (TYPE_3__*) ;
 int memcpy (int ,int ,int ) ;
 TYPE_3__* myself ;
 scalar_t__ nodeIsMaster (TYPE_3__*) ;
 int ntohl (int ) ;
 scalar_t__ ntohs (int ) ;
 int representClusterNodeFlags (int ,int) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 TYPE_7__ server ;
 int serverLog (scalar_t__,char*,int ,int ,...) ;
 scalar_t__ strcasecmp (int ,int ) ;

void clusterProcessGossipSection(clusterMsg *hdr, clusterLink *link) {
    uint16_t count = ntohs(hdr->count);
    clusterMsgDataGossip *g = (clusterMsgDataGossip*) hdr->data.ping.gossip;
    clusterNode *sender = link->node ? link->node : clusterLookupNode(hdr->sender);

    while(count--) {
        uint16_t flags = ntohs(g->flags);
        clusterNode *node;
        sds ci;

        if (server.verbosity == LL_DEBUG) {
            ci = representClusterNodeFlags(sdsempty(), flags);
            serverLog(LL_DEBUG,"GOSSIP %.40s %s:%d@%d %s",
                g->nodename,
                g->ip,
                ntohs(g->port),
                ntohs(g->cport),
                ci);
            sdsfree(ci);
        }


        node = clusterLookupNode(g->nodename);
        if (node) {


            if (sender && nodeIsMaster(sender) && node != myself) {
                if (flags & (CLUSTER_NODE_FAIL|CLUSTER_NODE_PFAIL)) {
                    if (clusterNodeAddFailureReport(node,sender)) {
                        serverLog(LL_VERBOSE,
                            "Node %.40s reported node %.40s as not reachable.",
                            sender->name, node->name);
                    }
                    markNodeAsFailingIfNeeded(node);
                } else {
                    if (clusterNodeDelFailureReport(node,sender)) {
                        serverLog(LL_VERBOSE,
                            "Node %.40s reported node %.40s is back online.",
                            sender->name, node->name);
                    }
                }
            }





            if (!(flags & (CLUSTER_NODE_FAIL|CLUSTER_NODE_PFAIL)) &&
                node->ping_sent == 0 &&
                clusterNodeFailureReportsCount(node) == 0)
            {
                mstime_t pongtime = ntohl(g->pong_received);
                pongtime *= 1000;





                if (pongtime <= (server.mstime+500) &&
                    pongtime > node->pong_received)
                {
                    node->pong_received = pongtime;
                }
            }






            if (node->flags & (CLUSTER_NODE_FAIL|CLUSTER_NODE_PFAIL) &&
                !(flags & CLUSTER_NODE_NOADDR) &&
                !(flags & (CLUSTER_NODE_FAIL|CLUSTER_NODE_PFAIL)) &&
                (strcasecmp(node->ip,g->ip) ||
                 node->port != ntohs(g->port) ||
                 node->cport != ntohs(g->cport)))
            {
                if (node->link) freeClusterLink(node->link);
                memcpy(node->ip,g->ip,NET_IP_STR_LEN);
                node->port = ntohs(g->port);
                node->cport = ntohs(g->cport);
                node->flags &= ~CLUSTER_NODE_NOADDR;
            }
        } else {






            if (sender &&
                !(flags & CLUSTER_NODE_NOADDR) &&
                !clusterBlacklistExists(g->nodename))
            {
                clusterStartHandshake(g->ip,ntohs(g->port),ntohs(g->cport));
            }
        }


        g++;
    }
}
