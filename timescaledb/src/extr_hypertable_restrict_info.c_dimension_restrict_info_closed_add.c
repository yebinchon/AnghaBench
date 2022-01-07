
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ strategy; int * partitions; } ;
struct TYPE_6__ {int use_or; int values; } ;
typedef scalar_t__ StrategyNumber ;
typedef int List ;
typedef TYPE_1__ DimensionValues ;
typedef TYPE_2__ DimensionRestrictInfoClosed ;


 scalar_t__ BTEqualStrategyNumber ;
 scalar_t__ InvalidStrategy ;
 int * NIL ;
 int * dimension_restrict_info_get_partitions (TYPE_2__*,int ) ;
 int * list_intersection_int (int *,int *) ;
 int list_length (int *) ;

__attribute__((used)) static bool
dimension_restrict_info_closed_add(DimensionRestrictInfoClosed *dri, StrategyNumber strategy,
           DimensionValues *dimvalues)
{
 List *partitions;
 bool restriction_added = 0;

 if (strategy != BTEqualStrategyNumber)
 {
  return 0;
 }

 partitions = dimension_restrict_info_get_partitions(dri, dimvalues->values);


 if (list_length(partitions) > 1 && !dimvalues->use_or)
 {
  dri->strategy = strategy;
  dri->partitions = NIL;
  return 1;
 }

 if (dri->strategy == InvalidStrategy)

 {
  dri->partitions = partitions;
  dri->strategy = strategy;
  restriction_added = 1;
 }
 else
 {

  if (dri->partitions == NIL)
   return 1;




  dri->partitions = list_intersection_int(dri->partitions, partitions);


  restriction_added = 1;
 }
 return restriction_added;
}
