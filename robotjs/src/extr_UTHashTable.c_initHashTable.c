
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocedNodeCount; size_t nodeSize; int nodes; scalar_t__ nodeCount; int * uttable; } ;
typedef TYPE_1__ UTHashTable ;
typedef int UTHashNode ;


 int assert (int) ;
 int calloc (size_t,size_t) ;

void initHashTable(UTHashTable *table, size_t initialCount, size_t nodeSize)
{
 assert(table != ((void*)0));
 assert(nodeSize >= sizeof(UTHashNode));

 table->uttable = ((void*)0);
 table->allocedNodeCount = (initialCount == 0) ? 1 : initialCount;
 table->nodeCount = 0;
 table->nodeSize = nodeSize;
 table->nodes = calloc(table->nodeSize, nodeSize * table->allocedNodeCount);
}
