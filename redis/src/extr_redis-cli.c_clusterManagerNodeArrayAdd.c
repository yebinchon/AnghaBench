
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; scalar_t__ count; int ** nodes; } ;
typedef TYPE_1__ clusterManagerNodeArray ;
typedef int clusterManagerNode ;


 int assert (int) ;

__attribute__((used)) static void clusterManagerNodeArrayAdd(clusterManagerNodeArray *array,
                                       clusterManagerNode *node)
{
    assert(array->nodes < (array->nodes + array->len));
    assert(node != ((void*)0));
    assert(array->count < array->len);
    array->nodes[array->count++] = node;
}
