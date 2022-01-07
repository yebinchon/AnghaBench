
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_5__ {int flags; int * replicas_count; int * replicate; int slots_count; int port; int ip; int name; scalar_t__ dirty; } ;
typedef TYPE_1__ clusterManagerNode ;


 int CLUSTER_MANAGER_FLAG_SLAVE ;
 char* clusterManagerNodeFlagString (TYPE_1__*) ;
 char* clusterManagerNodeSlotsString (TYPE_1__*) ;
 char* sdscat (char*,char*) ;
 char* sdscatfmt (char*,char*,char*,int *,...) ;
 char* sdsempty () ;
 int sdsfree (char*) ;

__attribute__((used)) static sds clusterManagerNodeInfo(clusterManagerNode *node, int indent) {
    sds info = sdsempty();
    sds spaces = sdsempty();
    int i;
    for (i = 0; i < indent; i++) spaces = sdscat(spaces, " ");
    if (indent) info = sdscat(info, spaces);
    int is_master = !(node->flags & CLUSTER_MANAGER_FLAG_SLAVE);
    char *role = (is_master ? "M" : "S");
    sds slots = ((void*)0);
    if (node->dirty && node->replicate != ((void*)0))
        info = sdscatfmt(info, "S: %S %s:%u", node->name, node->ip, node->port);
    else {
        slots = clusterManagerNodeSlotsString(node);
        sds flags = clusterManagerNodeFlagString(node);
        info = sdscatfmt(info, "%s: %S %s:%u\n"
                               "%s   slots:%S (%u slots) "
                               "%S",
                               role, node->name, node->ip, node->port, spaces,
                               slots, node->slots_count, flags);
        sdsfree(slots);
        sdsfree(flags);
    }
    if (node->replicate != ((void*)0))
        info = sdscatfmt(info, "\n%s   replicates %S", spaces, node->replicate);
    else if (node->replicas_count)
        info = sdscatfmt(info, "\n%s   %U additional replica(s)",
                         spaces, node->replicas_count);
    sdsfree(spaces);
    return info;
}
