
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* ip; int port; float weight; scalar_t__ balance; scalar_t__ replicas_count; scalar_t__ importing_count; scalar_t__ migrating_count; int * importing; int * migrating; int * friends; scalar_t__ dirty; int * replicate; int * flags_str; scalar_t__ flags; scalar_t__ ping_recv; scalar_t__ ping_sent; scalar_t__ current_epoch; int * name; int * context; } ;
typedef TYPE_1__ clusterManagerNode ;


 int clusterManagerNodeResetSlots (TYPE_1__*) ;
 TYPE_1__* zmalloc (int) ;

__attribute__((used)) static clusterManagerNode *clusterManagerNewNode(char *ip, int port) {
    clusterManagerNode *node = zmalloc(sizeof(*node));
    node->context = ((void*)0);
    node->name = ((void*)0);
    node->ip = ip;
    node->port = port;
    node->current_epoch = 0;
    node->ping_sent = 0;
    node->ping_recv = 0;
    node->flags = 0;
    node->flags_str = ((void*)0);
    node->replicate = ((void*)0);
    node->dirty = 0;
    node->friends = ((void*)0);
    node->migrating = ((void*)0);
    node->importing = ((void*)0);
    node->migrating_count = 0;
    node->importing_count = 0;
    node->replicas_count = 0;
    node->weight = 1.0f;
    node->balance = 0;
    clusterManagerNodeResetSlots(node);
    return node;
}
