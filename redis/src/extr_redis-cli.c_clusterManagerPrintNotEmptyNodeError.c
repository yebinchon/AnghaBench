
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port; int ip; } ;
typedef TYPE_1__ clusterManagerNode ;


 int clusterManagerLogErr (char*,int ,int ,char*) ;

__attribute__((used)) static void clusterManagerPrintNotEmptyNodeError(clusterManagerNode *node,
                                                 char *err)
{
    char *msg;
    if (err) msg = err;
    else {
        msg = "is not empty. Either the node already knows other "
              "nodes (check with CLUSTER NODES) or contains some "
              "key in database 0.";
    }
    clusterManagerLogErr("[ERR] Node %s:%d %s\n", node->ip, node->port, msg);
}
