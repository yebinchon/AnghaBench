
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int clusterState ;
struct TYPE_8__ {int port; int cport; int name; } ;
struct TYPE_7__ {int cfd_count; int tls_port; int port; int cluster_announce_port; int cluster_announce_bus_port; TYPE_1__* cluster; int * cfd; int el; scalar_t__ tls_cluster; int cluster_configfile; } ;
struct TYPE_6__ {int size; scalar_t__ mf_end; int slots_keys_count; int slots_to_keys; TYPE_3__* myself; int slots; scalar_t__ stats_pfail_nodes; scalar_t__* stats_bus_messages_received; scalar_t__* stats_bus_messages_sent; scalar_t__ lastVoteEpoch; int cant_failover_reason; scalar_t__ failover_auth_epoch; scalar_t__ failover_auth_rank; scalar_t__ failover_auth_count; scalar_t__ failover_auth_time; void* nodes_black_list; void* nodes; scalar_t__ todo_before_sleep; int state; scalar_t__ currentEpoch; } ;


 scalar_t__ AE_ERR ;
 int AE_READABLE ;
 int CLUSTERMSG_TYPE_COUNT ;
 int CLUSTER_CANT_FAILOVER_NONE ;
 int CLUSTER_FAIL ;
 int CLUSTER_NODE_MASTER ;
 int CLUSTER_NODE_MYSELF ;
 int CLUSTER_PORT_INCR ;
 scalar_t__ C_ERR ;
 int LL_NOTICE ;
 int LL_WARNING ;
 scalar_t__ aeCreateFileEvent (int ,int ,int ,int ,int *) ;
 int clusterAcceptHandler ;
 int clusterAddNode (TYPE_3__*) ;
 int clusterCloseAllSlots () ;
 scalar_t__ clusterLoadConfig (int ) ;
 scalar_t__ clusterLockConfig (int ) ;
 int clusterNodesBlackListDictType ;
 int clusterNodesDictType ;
 int clusterSaveConfigOrDie (int) ;
 int clusterUpdateMyselfFlags () ;
 TYPE_3__* createClusterNode (int *,int) ;
 void* dictCreate (int *,int *) ;
 int exit (int) ;
 scalar_t__ listenToPort (int,int *,int*) ;
 int memset (int ,int ,int) ;
 TYPE_3__* myself ;
 int raxNew () ;
 int resetManualFailover () ;
 TYPE_2__ server ;
 int serverLog (int ,char*,...) ;
 int serverPanic (char*) ;
 TYPE_1__* zmalloc (int) ;

void clusterInit(void) {
    int saveconf = 0;

    server.cluster = zmalloc(sizeof(clusterState));
    server.cluster->myself = ((void*)0);
    server.cluster->currentEpoch = 0;
    server.cluster->state = CLUSTER_FAIL;
    server.cluster->size = 1;
    server.cluster->todo_before_sleep = 0;
    server.cluster->nodes = dictCreate(&clusterNodesDictType,((void*)0));
    server.cluster->nodes_black_list =
        dictCreate(&clusterNodesBlackListDictType,((void*)0));
    server.cluster->failover_auth_time = 0;
    server.cluster->failover_auth_count = 0;
    server.cluster->failover_auth_rank = 0;
    server.cluster->failover_auth_epoch = 0;
    server.cluster->cant_failover_reason = CLUSTER_CANT_FAILOVER_NONE;
    server.cluster->lastVoteEpoch = 0;
    for (int i = 0; i < CLUSTERMSG_TYPE_COUNT; i++) {
        server.cluster->stats_bus_messages_sent[i] = 0;
        server.cluster->stats_bus_messages_received[i] = 0;
    }
    server.cluster->stats_pfail_nodes = 0;
    memset(server.cluster->slots,0, sizeof(server.cluster->slots));
    clusterCloseAllSlots();



    if (clusterLockConfig(server.cluster_configfile) == C_ERR)
        exit(1);


    if (clusterLoadConfig(server.cluster_configfile) == C_ERR) {


        myself = server.cluster->myself =
            createClusterNode(((void*)0),CLUSTER_NODE_MYSELF|CLUSTER_NODE_MASTER);
        serverLog(LL_NOTICE,"No cluster configuration found, I'm %.40s",
            myself->name);
        clusterAddNode(myself);
        saveconf = 1;
    }
    if (saveconf) clusterSaveConfigOrDie(1);


    server.cfd_count = 0;




    int port = server.tls_cluster ? server.tls_port : server.port;
    if (port > (65535-CLUSTER_PORT_INCR)) {
        serverLog(LL_WARNING, "Redis port number too high. "
                   "Cluster communication port is 10,000 port "
                   "numbers higher than your Redis port. "
                   "Your Redis port number must be "
                   "lower than 55535.");
        exit(1);
    }
    if (listenToPort(port+CLUSTER_PORT_INCR,
        server.cfd,&server.cfd_count) == C_ERR)
    {
        exit(1);
    } else {
        int j;

        for (j = 0; j < server.cfd_count; j++) {
            if (aeCreateFileEvent(server.el, server.cfd[j], AE_READABLE,
                clusterAcceptHandler, ((void*)0)) == AE_ERR)
                    serverPanic("Unrecoverable error creating Redis Cluster "
                                "file event.");
        }
    }


    server.cluster->slots_to_keys = raxNew();
    memset(server.cluster->slots_keys_count,0,
           sizeof(server.cluster->slots_keys_count));



    myself->port = port;
    myself->cport = port+CLUSTER_PORT_INCR;
    if (server.cluster_announce_port)
        myself->port = server.cluster_announce_port;
    if (server.cluster_announce_bus_port)
        myself->cport = server.cluster_announce_bus_port;

    server.cluster->mf_end = 0;
    resetManualFailover();
    clusterUpdateMyselfFlags();
}
