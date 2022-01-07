
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int ** nodes; int count; } ;
typedef TYPE_1__ clusterManagerNodeArray ;
typedef int clusterManagerNode ;


 int assert (int) ;

__attribute__((used)) static void clusterManagerNodeArrayShift(clusterManagerNodeArray *array,
                                         clusterManagerNode **nodeptr)
{
    assert(array->nodes < (array->nodes + array->len));

    if (*array->nodes != ((void*)0)) array->count--;

    *nodeptr = *array->nodes;

    array->nodes++;
    array->len--;
}
