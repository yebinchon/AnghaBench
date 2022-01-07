
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int mstime_t ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_20__ {char* ip; int flags; int ctime; scalar_t__ ping_sent; int pong_received; scalar_t__ numslots; int port; struct TYPE_20__* slaveof; int name; TYPE_3__* link; int cport; } ;
typedef TYPE_2__ clusterNode ;
struct TYPE_21__ {int ctime; int conn; } ;
typedef TYPE_3__ clusterLink ;
struct TYPE_22__ {char* cluster_announce_ip; int cluster_node_timeout; int cluster_module_flags; TYPE_1__* cluster; int * masterhost; int neterr; scalar_t__ tls_cluster; } ;
struct TYPE_19__ {scalar_t__ state; TYPE_2__* mf_slave; scalar_t__ mf_end; int nodes; scalar_t__ stats_pfail_nodes; } ;


 int CLUSTERMSG_TYPE_PING ;
 scalar_t__ CLUSTER_FAIL ;
 int CLUSTER_MODULE_FLAG_NO_FAILOVER ;
 int CLUSTER_NODE_FAIL ;
 int CLUSTER_NODE_HANDSHAKE ;
 int CLUSTER_NODE_MIGRATE_TO ;
 int CLUSTER_NODE_MYSELF ;
 int CLUSTER_NODE_NOADDR ;
 int CLUSTER_NODE_PFAIL ;
 int LL_DEBUG ;
 int NET_FIRST_BIND_ADDR ;
 int NET_IP_STR_LEN ;
 int clusterCountNonFailingSlaves (TYPE_2__*) ;
 int clusterDelNode (TYPE_2__*) ;
 int clusterHandleManualFailover () ;
 int clusterHandleSlaveFailover () ;
 int clusterHandleSlaveMigration (int) ;
 int clusterLinkConnectHandler ;
 int clusterSendPing (TYPE_3__*,int ) ;
 int clusterUpdateMyselfFlags () ;
 int clusterUpdateState () ;
 int connConnect (int ,char*,int ,int ,int ) ;
 int connCreateSocket () ;
 int connCreateTLS () ;
 int connSetPrivateData (int ,TYPE_3__*) ;
 TYPE_3__* createClusterLink (TYPE_2__*) ;
 int * dictGetRandomKey (int ) ;
 int * dictGetSafeIterator (int ) ;
 TYPE_2__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int freeClusterLink (TYPE_3__*) ;
 int manualFailoverCheckTimeout () ;
 void* mstime () ;
 TYPE_2__* myself ;
 int nodeFailed (TYPE_2__*) ;
 scalar_t__ nodeHasAddr (TYPE_2__*) ;
 scalar_t__ nodeInHandshake (TYPE_2__*) ;
 scalar_t__ nodeIsMaster (TYPE_2__*) ;
 scalar_t__ nodeIsSlave (TYPE_2__*) ;
 int replicationSetMaster (char*,int ) ;
 TYPE_4__ server ;
 int serverLog (int ,char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strncpy (char*,char*,int) ;
 int zfree (char*) ;
 char* zstrdup (char*) ;

void clusterCron(void) {
    dictIterator *di;
    dictEntry *de;
    int update_state = 0;
    int orphaned_masters;
    int max_slaves;
    int this_slaves;
    mstime_t min_pong = 0, now = mstime();
    clusterNode *min_pong_node = ((void*)0);
    static unsigned long long iteration = 0;
    mstime_t handshake_timeout;

    iteration++;




    {
        static char *prev_ip = ((void*)0);
        char *curr_ip = server.cluster_announce_ip;
        int changed = 0;

        if (prev_ip == ((void*)0) && curr_ip != ((void*)0)) changed = 1;
        else if (prev_ip != ((void*)0) && curr_ip == ((void*)0)) changed = 1;
        else if (prev_ip && curr_ip && strcmp(prev_ip,curr_ip)) changed = 1;

        if (changed) {
            if (prev_ip) zfree(prev_ip);
            prev_ip = curr_ip;

            if (curr_ip) {



                prev_ip = zstrdup(prev_ip);
                strncpy(myself->ip,server.cluster_announce_ip,NET_IP_STR_LEN);
                myself->ip[NET_IP_STR_LEN-1] = '\0';
            } else {
                myself->ip[0] = '\0';
            }
        }
    }





    handshake_timeout = server.cluster_node_timeout;
    if (handshake_timeout < 1000) handshake_timeout = 1000;


    clusterUpdateMyselfFlags();




    di = dictGetSafeIterator(server.cluster->nodes);
    server.cluster->stats_pfail_nodes = 0;
    while((de = dictNext(di)) != ((void*)0)) {
        clusterNode *node = dictGetVal(de);



        if (node->flags & (CLUSTER_NODE_MYSELF|CLUSTER_NODE_NOADDR)) continue;

        if (node->flags & CLUSTER_NODE_PFAIL)
            server.cluster->stats_pfail_nodes++;



        if (nodeInHandshake(node) && now - node->ctime > handshake_timeout) {
            clusterDelNode(node);
            continue;
        }

        if (node->link == ((void*)0)) {
            clusterLink *link = createClusterLink(node);
            link->conn = server.tls_cluster ? connCreateTLS() : connCreateSocket();
            connSetPrivateData(link->conn, link);
            if (connConnect(link->conn, node->ip, node->cport, NET_FIRST_BIND_ADDR,
                        clusterLinkConnectHandler) == -1) {





                if (node->ping_sent == 0) node->ping_sent = mstime();
                serverLog(LL_DEBUG, "Unable to connect to "
                    "Cluster Node [%s]:%d -> %s", node->ip,
                    node->cport, server.neterr);

                freeClusterLink(link);
                continue;
            }
            node->link = link;
        }
    }
    dictReleaseIterator(di);



    if (!(iteration % 10)) {
        int j;



        for (j = 0; j < 5; j++) {
            de = dictGetRandomKey(server.cluster->nodes);
            clusterNode *this = dictGetVal(de);


            if (this->link == ((void*)0) || this->ping_sent != 0) continue;
            if (this->flags & (CLUSTER_NODE_MYSELF|CLUSTER_NODE_HANDSHAKE))
                continue;
            if (min_pong_node == ((void*)0) || min_pong > this->pong_received) {
                min_pong_node = this;
                min_pong = this->pong_received;
            }
        }
        if (min_pong_node) {
            serverLog(LL_DEBUG,"Pinging node %.40s", min_pong_node->name);
            clusterSendPing(min_pong_node->link, CLUSTERMSG_TYPE_PING);
        }
    }







    orphaned_masters = 0;
    max_slaves = 0;
    this_slaves = 0;
    di = dictGetSafeIterator(server.cluster->nodes);
    while((de = dictNext(di)) != ((void*)0)) {
        clusterNode *node = dictGetVal(de);
        now = mstime();
        mstime_t delay;

        if (node->flags &
            (CLUSTER_NODE_MYSELF|CLUSTER_NODE_NOADDR|CLUSTER_NODE_HANDSHAKE))
                continue;



        if (nodeIsSlave(myself) && nodeIsMaster(node) && !nodeFailed(node)) {
            int okslaves = clusterCountNonFailingSlaves(node);




            if (okslaves == 0 && node->numslots > 0 &&
                node->flags & CLUSTER_NODE_MIGRATE_TO)
            {
                orphaned_masters++;
            }
            if (okslaves > max_slaves) max_slaves = okslaves;
            if (nodeIsSlave(myself) && myself->slaveof == node)
                this_slaves = okslaves;
        }




        if (node->link &&
            now - node->link->ctime >
            server.cluster_node_timeout &&
            node->ping_sent &&
            node->pong_received < node->ping_sent &&

            now - node->ping_sent > server.cluster_node_timeout/2)
        {

            freeClusterLink(node->link);
        }





        if (node->link &&
            node->ping_sent == 0 &&
            (now - node->pong_received) > server.cluster_node_timeout/2)
        {
            clusterSendPing(node->link, CLUSTERMSG_TYPE_PING);
            continue;
        }



        if (server.cluster->mf_end &&
            nodeIsMaster(myself) &&
            server.cluster->mf_slave == node &&
            node->link)
        {
            clusterSendPing(node->link, CLUSTERMSG_TYPE_PING);
            continue;
        }


        if (node->ping_sent == 0) continue;




        delay = now - node->ping_sent;

        if (delay > server.cluster_node_timeout) {


            if (!(node->flags & (CLUSTER_NODE_PFAIL|CLUSTER_NODE_FAIL))) {
                serverLog(LL_DEBUG,"*** NODE %.40s possibly failing",
                    node->name);
                node->flags |= CLUSTER_NODE_PFAIL;
                update_state = 1;
            }
        }
    }
    dictReleaseIterator(di);




    if (nodeIsSlave(myself) &&
        server.masterhost == ((void*)0) &&
        myself->slaveof &&
        nodeHasAddr(myself->slaveof))
    {
        replicationSetMaster(myself->slaveof->ip, myself->slaveof->port);
    }


    manualFailoverCheckTimeout();

    if (nodeIsSlave(myself)) {
        clusterHandleManualFailover();
        if (!(server.cluster_module_flags & CLUSTER_MODULE_FLAG_NO_FAILOVER))
            clusterHandleSlaveFailover();





        if (orphaned_masters && max_slaves >= 2 && this_slaves == max_slaves)
            clusterHandleSlaveMigration(max_slaves);
    }

    if (update_state || server.cluster->state == CLUSTER_FAIL)
        clusterUpdateState();
}
