
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dimension; } ;
struct TYPE_4__ {int type; } ;
typedef int DimensionValues ;
typedef int DimensionRestrictInfoOpen ;
typedef int DimensionRestrictInfoClosed ;
typedef TYPE_2__ DimensionRestrictInfo ;




 int ERROR ;
 int dimension_restrict_info_closed_add (int *,int,int *) ;
 int dimension_restrict_info_open_add (int *,int,int *) ;
 int elog (int ,char*,int) ;

__attribute__((used)) static bool
dimension_restrict_info_add(DimensionRestrictInfo *dri, int strategy, DimensionValues *values)
{
 switch (dri->dimension->type)
 {
  case 128:
   return dimension_restrict_info_open_add((DimensionRestrictInfoOpen *) dri,
             strategy,
             values);
  case 129:
   return dimension_restrict_info_closed_add((DimensionRestrictInfoClosed *) dri,
               strategy,
               values);
  default:
   elog(ERROR, "unknown dimension type: %d", dri->dimension->type);

   return 0;
 }
}
