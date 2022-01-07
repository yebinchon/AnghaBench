
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sds ;
struct TYPE_4__ {int value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int list ;
typedef int dictIterator ;
typedef int dictEntry ;
typedef int dict ;
struct TYPE_5__ {int nodes; } ;


 int CLUSTER_JOIN_CHECK_AFTER ;
 int * clusterManagerGetLinkStatus () ;
 int clusterManagerIsConfigConsistent () ;
 int clusterManagerLogErr (char*,...) ;
 TYPE_3__ cluster_manager ;
 int * dictGetIterator (int *) ;
 int dictGetKey (int *) ;
 scalar_t__ dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictRelease (int *) ;
 int dictReleaseIterator (int *) ;
 scalar_t__ dictSize (int *) ;
 int fflush (int ) ;
 int listEmpty (int *) ;
 float listLength (int ) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int *,int *) ;
 scalar_t__ parseClusterNodeAddress (int ,char**,int*,int*) ;
 int printf (char*) ;
 int sdsfree (int ) ;
 int sleep (int) ;
 int stdout ;

__attribute__((used)) static void clusterManagerWaitForClusterJoin(void) {
    printf("Waiting for the cluster to join\n");
    int counter = 0,
        check_after = CLUSTER_JOIN_CHECK_AFTER +
                      (int)(listLength(cluster_manager.nodes) * 0.15f);
    while(!clusterManagerIsConfigConsistent()) {
        printf(".");
        fflush(stdout);
        sleep(1);
        if (++counter > check_after) {
            dict *status = clusterManagerGetLinkStatus();
            dictIterator *iter = ((void*)0);
            if (status != ((void*)0) && dictSize(status) > 0) {
                printf("\n");
                clusterManagerLogErr("Warning: %d node(s) may "
                                     "be unreachable\n", dictSize(status));
                iter = dictGetIterator(status);
                dictEntry *entry;
                while ((entry = dictNext(iter)) != ((void*)0)) {
                    sds nodeaddr = (sds) dictGetKey(entry);
                    char *node_ip = ((void*)0);
                    int node_port = 0, node_bus_port = 0;
                    list *from = (list *) dictGetVal(entry);
                    if (parseClusterNodeAddress(nodeaddr, &node_ip,
                        &node_port, &node_bus_port) && node_bus_port) {
                        clusterManagerLogErr(" - The port %d of node %s may "
                                             "be unreachable from:\n",
                                             node_bus_port, node_ip);
                    } else {
                        clusterManagerLogErr(" - Node %s may be unreachable "
                                             "from:\n", nodeaddr);
                    }
                    listIter li;
                    listNode *ln;
                    listRewind(from, &li);
                    while ((ln = listNext(&li)) != ((void*)0)) {
                        sds from_addr = ln->value;
                        clusterManagerLogErr("   %s\n", from_addr);
                        sdsfree(from_addr);
                    }
                    clusterManagerLogErr("Cluster bus ports must be reachable "
                                         "by every node.\nRemember that "
                                         "cluster bus ports are different "
                                         "from standard instance ports.\n");
                    listEmpty(from);
                }
            }
            if (iter != ((void*)0)) dictReleaseIterator(iter);
            if (status != ((void*)0)) dictRelease(status);
            counter = 0;
        }
    }
    printf("\n");
}
