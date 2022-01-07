
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int * link; } ;
typedef TYPE_1__ clusterNode ;


 int C_ERR ;
 int C_OK ;
 TYPE_1__* clusterLookupNode (char const*) ;
 int clusterSendModule (int *,int ,int ,unsigned char*,int ) ;

int clusterSendModuleMessageToTarget(const char *target, uint64_t module_id, uint8_t type, unsigned char *payload, uint32_t len) {
    clusterNode *node = ((void*)0);

    if (target != ((void*)0)) {
        node = clusterLookupNode(target);
        if (node == ((void*)0) || node->link == ((void*)0)) return C_ERR;
    }

    clusterSendModule(target ? node->link : ((void*)0),
                      module_id, type, payload, len);
    return C_OK;
}
