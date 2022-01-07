
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int clusterNode ;
struct TYPE_4__ {int * conn; int * node; void* rcvbuf; void* sndbuf; int ctime; } ;
typedef TYPE_1__ clusterLink ;


 int mstime () ;
 void* sdsempty () ;
 TYPE_1__* zmalloc (int) ;

clusterLink *createClusterLink(clusterNode *node) {
    clusterLink *link = zmalloc(sizeof(*link));
    link->ctime = mstime();
    link->sndbuf = sdsempty();
    link->rcvbuf = sdsempty();
    link->node = node;
    link->conn = ((void*)0);
    return link;
}
