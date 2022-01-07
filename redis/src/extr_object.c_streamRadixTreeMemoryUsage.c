
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int streamID ;
typedef int raxNode ;
struct TYPE_3__ {int numele; int numnodes; } ;
typedef TYPE_1__ rax ;



size_t streamRadixTreeMemoryUsage(rax *rax) {
    size_t size;
    size = rax->numele * sizeof(streamID);
    size += rax->numnodes * sizeof(raxNode);

    size += rax->numnodes * sizeof(long)*30;
    return size;
}
