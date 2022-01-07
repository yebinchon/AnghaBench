
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int name; } ;
typedef TYPE_1__ clusterManagerNode ;


 int CLUSTER_MANAGER_FLAG_SLAVE ;
 int clusterManagerLogErr (char const*,...) ;
 TYPE_1__* clusterManagerNodeByName (char*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static clusterManagerNode *clusterNodeForResharding(char *id,
                                                    clusterManagerNode *target,
                                                    int *raise_err)
{
    clusterManagerNode *node = ((void*)0);
    const char *invalid_node_msg = "*** The specified node (%s) is not known "
                                   "or not a master, please retry.\n";
    node = clusterManagerNodeByName(id);
    *raise_err = 0;
    if (!node || node->flags & CLUSTER_MANAGER_FLAG_SLAVE) {
        clusterManagerLogErr(invalid_node_msg, id);
        *raise_err = 1;
        return ((void*)0);
    } else if (node != ((void*)0) && target != ((void*)0)) {
        if (!strcmp(node->name, target->name)) {
            clusterManagerLogErr( "*** It is not possible to use "
                                  "the target node as "
                                  "source node.\n");
            return ((void*)0);
        }
    }
    return node;
}
