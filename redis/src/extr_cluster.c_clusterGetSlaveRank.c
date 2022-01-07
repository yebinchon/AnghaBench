
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numslaves; TYPE_2__** slaves; } ;
typedef TYPE_1__ clusterNode ;
struct TYPE_6__ {long long repl_offset; TYPE_1__* slaveof; } ;


 TYPE_2__* myself ;
 int nodeCantFailover (TYPE_2__*) ;
 int nodeIsSlave (TYPE_2__*) ;
 long long replicationGetSlaveOffset () ;
 int serverAssert (int ) ;

int clusterGetSlaveRank(void) {
    long long myoffset;
    int j, rank = 0;
    clusterNode *master;

    serverAssert(nodeIsSlave(myself));
    master = myself->slaveof;
    if (master == ((void*)0)) return 0;

    myoffset = replicationGetSlaveOffset();
    for (j = 0; j < master->numslaves; j++)
        if (master->slaves[j] != myself &&
            !nodeCantFailover(master->slaves[j]) &&
            master->slaves[j]->repl_offset > myoffset) rank++;
    return rank;
}
