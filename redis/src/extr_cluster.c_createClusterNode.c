
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int fail_reports; scalar_t__ repl_offset; scalar_t__ repl_offset_time; scalar_t__ orphaned_time; scalar_t__ voted_time; scalar_t__ cport; scalar_t__ port; int ip; int * link; scalar_t__ fail_time; scalar_t__ pong_received; scalar_t__ ping_sent; int * slaveof; int * slaves; scalar_t__ numslaves; scalar_t__ numslots; int slots; scalar_t__ configEpoch; int ctime; int name; } ;
typedef TYPE_1__ clusterNode ;


 int CLUSTER_NAMELEN ;
 int getRandomHexChars (int ,int ) ;
 int listCreate () ;
 int listSetFreeMethod (int ,int ) ;
 int memcpy (int ,char*,int ) ;
 int memset (int ,int ,int) ;
 int mstime () ;
 int zfree ;
 TYPE_1__* zmalloc (int) ;

clusterNode *createClusterNode(char *nodename, int flags) {
    clusterNode *node = zmalloc(sizeof(*node));

    if (nodename)
        memcpy(node->name, nodename, CLUSTER_NAMELEN);
    else
        getRandomHexChars(node->name, CLUSTER_NAMELEN);
    node->ctime = mstime();
    node->configEpoch = 0;
    node->flags = flags;
    memset(node->slots,0,sizeof(node->slots));
    node->numslots = 0;
    node->numslaves = 0;
    node->slaves = ((void*)0);
    node->slaveof = ((void*)0);
    node->ping_sent = node->pong_received = 0;
    node->fail_time = 0;
    node->link = ((void*)0);
    memset(node->ip,0,sizeof(node->ip));
    node->port = 0;
    node->cport = 0;
    node->fail_reports = listCreate();
    node->voted_time = 0;
    node->orphaned_time = 0;
    node->repl_offset_time = 0;
    node->repl_offset = 0;
    listSetFreeMethod(node->fail_reports,zfree);
    return node;
}
