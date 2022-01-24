#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  sds ;
typedef  int mstime_t ;
struct TYPE_21__ {scalar_t__ ping_sent; int pong_received; int flags; scalar_t__ port; scalar_t__ cport; int /*<<< orphan*/  ip; scalar_t__ link; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ clusterNode ;
struct TYPE_22__ {int /*<<< orphan*/  cport; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; int /*<<< orphan*/  nodename; int /*<<< orphan*/  pong_received; int /*<<< orphan*/  flags; } ;
typedef  TYPE_4__ clusterMsgDataGossip ;
struct TYPE_19__ {scalar_t__ gossip; } ;
struct TYPE_20__ {TYPE_1__ ping; } ;
struct TYPE_23__ {int /*<<< orphan*/  sender; TYPE_2__ data; int /*<<< orphan*/  count; } ;
typedef  TYPE_5__ clusterMsg ;
struct TYPE_24__ {TYPE_3__* node; } ;
typedef  TYPE_6__ clusterLink ;
struct TYPE_25__ {scalar_t__ verbosity; int mstime; } ;

/* Variables and functions */
 int CLUSTER_NODE_FAIL ; 
 int CLUSTER_NODE_NOADDR ; 
 int CLUSTER_NODE_PFAIL ; 
 scalar_t__ LL_DEBUG ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 int /*<<< orphan*/  NET_IP_STR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* myself ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_7__ server ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC17(clusterMsg *hdr, clusterLink *link) {
    uint16_t count = FUNC11(hdr->count);
    clusterMsgDataGossip *g = (clusterMsgDataGossip*) hdr->data.ping.gossip;
    clusterNode *sender = link->node ? link->node : FUNC1(hdr->sender);

    while(count--) {
        uint16_t flags = FUNC11(g->flags);
        clusterNode *node;
        sds ci;

        if (server.verbosity == LL_DEBUG) {
            ci = FUNC12(FUNC13(), flags);
            FUNC15(LL_DEBUG,"GOSSIP %.40s %s:%d@%d %s",
                g->nodename,
                g->ip,
                FUNC11(g->port),
                FUNC11(g->cport),
                ci);
            FUNC14(ci);
        }

        /* Update our state accordingly to the gossip sections */
        node = FUNC1(g->nodename);
        if (node) {
            /* We already know this node.
               Handle failure reports, only when the sender is a master. */
            if (sender && FUNC9(sender) && node != myself) {
                if (flags & (CLUSTER_NODE_FAIL|CLUSTER_NODE_PFAIL)) {
                    if (FUNC2(node,sender)) {
                        FUNC15(LL_VERBOSE,
                            "Node %.40s reported node %.40s as not reachable.",
                            sender->name, node->name);
                    }
                    FUNC7(node);
                } else {
                    if (FUNC3(node,sender)) {
                        FUNC15(LL_VERBOSE,
                            "Node %.40s reported node %.40s is back online.",
                            sender->name, node->name);
                    }
                }
            }

            /* If from our POV the node is up (no failure flags are set),
             * we have no pending ping for the node, nor we have failure
             * reports for this node, update the last pong time with the
             * one we see from the other nodes. */
            if (!(flags & (CLUSTER_NODE_FAIL|CLUSTER_NODE_PFAIL)) &&
                node->ping_sent == 0 &&
                FUNC4(node) == 0)
            {
                mstime_t pongtime = FUNC10(g->pong_received);
                pongtime *= 1000; /* Convert back to milliseconds. */

                /* Replace the pong time with the received one only if
                 * it's greater than our view but is not in the future
                 * (with 500 milliseconds tolerance) from the POV of our
                 * clock. */
                if (pongtime <= (server.mstime+500) &&
                    pongtime > node->pong_received)
                {
                    node->pong_received = pongtime;
                }
            }

            /* If we already know this node, but it is not reachable, and
             * we see a different address in the gossip section of a node that
             * can talk with this other node, update the address, disconnect
             * the old link if any, so that we'll attempt to connect with the
             * new address. */
            if (node->flags & (CLUSTER_NODE_FAIL|CLUSTER_NODE_PFAIL) &&
                !(flags & CLUSTER_NODE_NOADDR) &&
                !(flags & (CLUSTER_NODE_FAIL|CLUSTER_NODE_PFAIL)) &&
                (FUNC16(node->ip,g->ip) ||
                 node->port != FUNC11(g->port) ||
                 node->cport != FUNC11(g->cport)))
            {
                if (node->link) FUNC6(node->link);
                FUNC8(node->ip,g->ip,NET_IP_STR_LEN);
                node->port = FUNC11(g->port);
                node->cport = FUNC11(g->cport);
                node->flags &= ~CLUSTER_NODE_NOADDR;
            }
        } else {
            /* If it's not in NOADDR state and we don't have it, we
             * start a handshake process against this IP/PORT pairs.
             *
             * Note that we require that the sender of this gossip message
             * is a well known node in our cluster, otherwise we risk
             * joining another cluster. */
            if (sender &&
                !(flags & CLUSTER_NODE_NOADDR) &&
                !FUNC0(g->nodename))
            {
                FUNC5(g->ip,FUNC11(g->port),FUNC11(g->cport));
            }
        }

        /* Next node */
        g++;
    }
}