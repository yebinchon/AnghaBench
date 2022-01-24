#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int mstime_t ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_20__ {char* ip; int flags; int ctime; scalar_t__ ping_sent; int pong_received; scalar_t__ numslots; int /*<<< orphan*/  port; struct TYPE_20__* slaveof; int /*<<< orphan*/  name; TYPE_3__* link; int /*<<< orphan*/  cport; } ;
typedef  TYPE_2__ clusterNode ;
struct TYPE_21__ {int ctime; int /*<<< orphan*/  conn; } ;
typedef  TYPE_3__ clusterLink ;
struct TYPE_22__ {char* cluster_announce_ip; int cluster_node_timeout; int cluster_module_flags; TYPE_1__* cluster; int /*<<< orphan*/ * masterhost; int /*<<< orphan*/  neterr; scalar_t__ tls_cluster; } ;
struct TYPE_19__ {scalar_t__ state; TYPE_2__* mf_slave; scalar_t__ mf_end; int /*<<< orphan*/  nodes; scalar_t__ stats_pfail_nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTERMSG_TYPE_PING ; 
 scalar_t__ CLUSTER_FAIL ; 
 int CLUSTER_MODULE_FLAG_NO_FAILOVER ; 
 int CLUSTER_NODE_FAIL ; 
 int CLUSTER_NODE_HANDSHAKE ; 
 int CLUSTER_NODE_MIGRATE_TO ; 
 int CLUSTER_NODE_MYSELF ; 
 int CLUSTER_NODE_NOADDR ; 
 int CLUSTER_NODE_PFAIL ; 
 int /*<<< orphan*/  LL_DEBUG ; 
 int /*<<< orphan*/  NET_FIRST_BIND_ADDR ; 
 int NET_IP_STR_LEN ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  clusterLinkConnectHandler ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 void* FUNC20 () ; 
 TYPE_2__* myself ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 scalar_t__ FUNC22 (TYPE_2__*) ; 
 scalar_t__ FUNC23 (TYPE_2__*) ; 
 scalar_t__ FUNC24 (TYPE_2__*) ; 
 scalar_t__ FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__ FUNC28 (char*,char*) ; 
 int /*<<< orphan*/  FUNC29 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 
 char* FUNC31 (char*) ; 

void FUNC32(void) {
    dictIterator *di;
    dictEntry *de;
    int update_state = 0;
    int orphaned_masters; /* How many masters there are without ok slaves. */
    int max_slaves; /* Max number of ok slaves for a single master. */
    int this_slaves; /* Number of ok slaves for our master (if we are slave). */
    mstime_t min_pong = 0, now = FUNC20();
    clusterNode *min_pong_node = NULL;
    static unsigned long long iteration = 0;
    mstime_t handshake_timeout;

    iteration++; /* Number of times this function was called so far. */

    /* We want to take myself->ip in sync with the cluster-announce-ip option.
     * The option can be set at runtime via CONFIG SET, so we periodically check
     * if the option changed to reflect this into myself->ip. */
    {
        static char *prev_ip = NULL;
        char *curr_ip = server.cluster_announce_ip;
        int changed = 0;

        if (prev_ip == NULL && curr_ip != NULL) changed = 1;
        else if (prev_ip != NULL && curr_ip == NULL) changed = 1;
        else if (prev_ip && curr_ip && FUNC28(prev_ip,curr_ip)) changed = 1;

        if (changed) {
            if (prev_ip) FUNC30(prev_ip);
            prev_ip = curr_ip;

            if (curr_ip) {
                /* We always take a copy of the previous IP address, by
                 * duplicating the string. This way later we can check if
                 * the address really changed. */
                prev_ip = FUNC31(prev_ip);
                FUNC29(myself->ip,server.cluster_announce_ip,NET_IP_STR_LEN);
                myself->ip[NET_IP_STR_LEN-1] = '\0';
            } else {
                myself->ip[0] = '\0'; /* Force autodetection. */
            }
        }
    }

    /* The handshake timeout is the time after which a handshake node that was
     * not turned into a normal node is removed from the nodes. Usually it is
     * just the NODE_TIMEOUT value, but when NODE_TIMEOUT is too small we use
     * the value of 1 second. */
    handshake_timeout = server.cluster_node_timeout;
    if (handshake_timeout < 1000) handshake_timeout = 1000;

    /* Update myself flags. */
    FUNC6();

    /* Check if we have disconnected nodes and re-establish the connection.
     * Also update a few stats while we are here, that can be used to make
     * better decisions in other part of the code. */
    di = FUNC14(server.cluster->nodes);
    server.cluster->stats_pfail_nodes = 0;
    while((de = FUNC16(di)) != NULL) {
        clusterNode *node = FUNC15(de);

        /* Not interested in reconnecting the link with myself or nodes
         * for which we have no address. */
        if (node->flags & (CLUSTER_NODE_MYSELF|CLUSTER_NODE_NOADDR)) continue;

        if (node->flags & CLUSTER_NODE_PFAIL)
            server.cluster->stats_pfail_nodes++;

        /* A Node in HANDSHAKE state has a limited lifespan equal to the
         * configured node timeout. */
        if (FUNC23(node) && now - node->ctime > handshake_timeout) {
            FUNC1(node);
            continue;
        }

        if (node->link == NULL) {
            clusterLink *link = FUNC12(node);
            link->conn = server.tls_cluster ? FUNC10() : FUNC9();
            FUNC11(link->conn, link);
            if (FUNC8(link->conn, node->ip, node->cport, NET_FIRST_BIND_ADDR,
                        clusterLinkConnectHandler) == -1) {
                /* We got a synchronous error from connect before
                 * clusterSendPing() had a chance to be called.
                 * If node->ping_sent is zero, failure detection can't work,
                 * so we claim we actually sent a ping now (that will
                 * be really sent as soon as the link is obtained). */
                if (node->ping_sent == 0) node->ping_sent = FUNC20();
                FUNC27(LL_DEBUG, "Unable to connect to "
                    "Cluster Node [%s]:%d -> %s", node->ip,
                    node->cport, server.neterr);

                FUNC18(link);
                continue;
            }
            node->link = link;
        }
    }
    FUNC17(di);

    /* Ping some random node 1 time every 10 iterations, so that we usually ping
     * one random node every second. */
    if (!(iteration % 10)) {
        int j;

        /* Check a few random nodes and ping the one with the oldest
         * pong_received time. */
        for (j = 0; j < 5; j++) {
            de = FUNC13(server.cluster->nodes);
            clusterNode *this = FUNC15(de);

            /* Don't ping nodes disconnected or with a ping currently active. */
            if (this->link == NULL || this->ping_sent != 0) continue;
            if (this->flags & (CLUSTER_NODE_MYSELF|CLUSTER_NODE_HANDSHAKE))
                continue;
            if (min_pong_node == NULL || min_pong > this->pong_received) {
                min_pong_node = this;
                min_pong = this->pong_received;
            }
        }
        if (min_pong_node) {
            FUNC27(LL_DEBUG,"Pinging node %.40s", min_pong_node->name);
            FUNC5(min_pong_node->link, CLUSTERMSG_TYPE_PING);
        }
    }

    /* Iterate nodes to check if we need to flag something as failing.
     * This loop is also responsible to:
     * 1) Check if there are orphaned masters (masters without non failing
     *    slaves).
     * 2) Count the max number of non failing slaves for a single master.
     * 3) Count the number of slaves for our master, if we are a slave. */
    orphaned_masters = 0;
    max_slaves = 0;
    this_slaves = 0;
    di = FUNC14(server.cluster->nodes);
    while((de = FUNC16(di)) != NULL) {
        clusterNode *node = FUNC15(de);
        now = FUNC20(); /* Use an updated time at every iteration. */
        mstime_t delay;

        if (node->flags &
            (CLUSTER_NODE_MYSELF|CLUSTER_NODE_NOADDR|CLUSTER_NODE_HANDSHAKE))
                continue;

        /* Orphaned master check, useful only if the current instance
         * is a slave that may migrate to another master. */
        if (FUNC25(myself) && FUNC24(node) && !FUNC21(node)) {
            int okslaves = FUNC0(node);

            /* A master is orphaned if it is serving a non-zero number of
             * slots, have no working slaves, but used to have at least one
             * slave, or failed over a master that used to have slaves. */
            if (okslaves == 0 && node->numslots > 0 &&
                node->flags & CLUSTER_NODE_MIGRATE_TO)
            {
                orphaned_masters++;
            }
            if (okslaves > max_slaves) max_slaves = okslaves;
            if (FUNC25(myself) && myself->slaveof == node)
                this_slaves = okslaves;
        }

        /* If we are waiting for the PONG more than half the cluster
         * timeout, reconnect the link: maybe there is a connection
         * issue even if the node is alive. */
        if (node->link && /* is connected */
            now - node->link->ctime >
            server.cluster_node_timeout && /* was not already reconnected */
            node->ping_sent && /* we already sent a ping */
            node->pong_received < node->ping_sent && /* still waiting pong */
            /* and we are waiting for the pong more than timeout/2 */
            now - node->ping_sent > server.cluster_node_timeout/2)
        {
            /* Disconnect the link, it will be reconnected automatically. */
            FUNC18(node->link);
        }

        /* If we have currently no active ping in this instance, and the
         * received PONG is older than half the cluster timeout, send
         * a new ping now, to ensure all the nodes are pinged without
         * a too big delay. */
        if (node->link &&
            node->ping_sent == 0 &&
            (now - node->pong_received) > server.cluster_node_timeout/2)
        {
            FUNC5(node->link, CLUSTERMSG_TYPE_PING);
            continue;
        }

        /* If we are a master and one of the slaves requested a manual
         * failover, ping it continuously. */
        if (server.cluster->mf_end &&
            FUNC24(myself) &&
            server.cluster->mf_slave == node &&
            node->link)
        {
            FUNC5(node->link, CLUSTERMSG_TYPE_PING);
            continue;
        }

        /* Check only if we have an active ping for this instance. */
        if (node->ping_sent == 0) continue;

        /* Compute the delay of the PONG. Note that if we already received
         * the PONG, then node->ping_sent is zero, so can't reach this
         * code at all. */
        delay = now - node->ping_sent;

        if (delay > server.cluster_node_timeout) {
            /* Timeout reached. Set the node as possibly failing if it is
             * not already in this state. */
            if (!(node->flags & (CLUSTER_NODE_PFAIL|CLUSTER_NODE_FAIL))) {
                FUNC27(LL_DEBUG,"*** NODE %.40s possibly failing",
                    node->name);
                node->flags |= CLUSTER_NODE_PFAIL;
                update_state = 1;
            }
        }
    }
    FUNC17(di);

    /* If we are a slave node but the replication is still turned off,
     * enable it if we know the address of our master and it appears to
     * be up. */
    if (FUNC25(myself) &&
        server.masterhost == NULL &&
        myself->slaveof &&
        FUNC22(myself->slaveof))
    {
        FUNC26(myself->slaveof->ip, myself->slaveof->port);
    }

    /* Abourt a manual failover if the timeout is reached. */
    FUNC19();

    if (FUNC25(myself)) {
        FUNC2();
        if (!(server.cluster_module_flags & CLUSTER_MODULE_FLAG_NO_FAILOVER))
            FUNC3();
        /* If there are orphaned slaves, and we are a slave among the masters
         * with the max number of non-failing slaves, consider migrating to
         * the orphaned masters. Note that it does not make sense to try
         * a migration if there is no master with at least *two* working
         * slaves. */
        if (orphaned_masters && max_slaves >= 2 && this_slaves == max_slaves)
            FUNC4(max_slaves);
    }

    if (update_state || server.cluster->state == CLUSTER_FAIL)
        FUNC7();
}