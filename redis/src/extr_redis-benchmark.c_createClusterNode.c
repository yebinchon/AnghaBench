
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ip; int port; int * redis_config; scalar_t__ importing_count; scalar_t__ migrating_count; int * importing; int * migrating; scalar_t__ updated_slots_count; int * updated_slots; scalar_t__ current_slot_index; scalar_t__ slots_count; void* slots; scalar_t__ replicas_count; int * replicate; scalar_t__ flags; int * name; } ;
typedef TYPE_1__ clusterNode ;


 int CLUSTER_SLOTS ;
 void* zmalloc (int) ;

__attribute__((used)) static clusterNode *createClusterNode(char *ip, int port) {
    clusterNode *node = zmalloc(sizeof(*node));
    if (!node) return ((void*)0);
    node->ip = ip;
    node->port = port;
    node->name = ((void*)0);
    node->flags = 0;
    node->replicate = ((void*)0);
    node->replicas_count = 0;
    node->slots = zmalloc(CLUSTER_SLOTS * sizeof(int));
    node->slots_count = 0;
    node->current_slot_index = 0;
    node->updated_slots = ((void*)0);
    node->updated_slots_count = 0;
    node->migrating = ((void*)0);
    node->importing = ((void*)0);
    node->migrating_count = 0;
    node->importing_count = 0;
    node->redis_config = ((void*)0);
    return node;
}
