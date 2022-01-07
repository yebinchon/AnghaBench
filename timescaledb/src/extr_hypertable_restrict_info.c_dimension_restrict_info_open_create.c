
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * dimension; } ;
struct TYPE_6__ {void* upper_strategy; void* lower_strategy; TYPE_1__ base; } ;
typedef TYPE_2__ DimensionRestrictInfoOpen ;
typedef int Dimension ;


 void* InvalidStrategy ;
 TYPE_2__* palloc (int) ;

__attribute__((used)) static DimensionRestrictInfoOpen *
dimension_restrict_info_open_create(Dimension *d)
{
 DimensionRestrictInfoOpen *new = palloc(sizeof(DimensionRestrictInfoOpen));

 new->base.dimension = d;
 new->lower_strategy = InvalidStrategy;
 new->upper_strategy = InvalidStrategy;
 return new;
}
