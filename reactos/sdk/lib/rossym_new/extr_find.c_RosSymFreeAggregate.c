
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {struct TYPE_5__* Type; struct TYPE_5__* Name; } ;
struct TYPE_4__ {int NumElements; TYPE_2__* Elements; } ;
typedef TYPE_1__* PROSSYM_AGGREGATE ;


 int free (TYPE_2__*) ;

VOID
RosSymFreeAggregate(PROSSYM_AGGREGATE Aggregate)
{
    int i;
    for (i = 0; i < Aggregate->NumElements; i++) {
        free(Aggregate->Elements[i].Name);
        free(Aggregate->Elements[i].Type);
    }
    free(Aggregate->Elements);
}
