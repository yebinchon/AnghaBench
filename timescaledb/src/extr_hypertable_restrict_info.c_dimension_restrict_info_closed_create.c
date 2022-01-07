
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * dimension; } ;
struct TYPE_6__ {int strategy; TYPE_1__ base; int partitions; } ;
typedef TYPE_2__ DimensionRestrictInfoClosed ;
typedef int Dimension ;


 int InvalidStrategy ;
 int NIL ;
 TYPE_2__* palloc (int) ;

__attribute__((used)) static DimensionRestrictInfoClosed *
dimension_restrict_info_closed_create(Dimension *d)
{
 DimensionRestrictInfoClosed *new = palloc(sizeof(DimensionRestrictInfoClosed));

 new->partitions = NIL;
 new->base.dimension = d;
 new->strategy = InvalidStrategy;
 return new;
}
