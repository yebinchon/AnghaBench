
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dimension; } ;
struct TYPE_4__ {int type; } ;
typedef int DimensionVec ;
typedef int DimensionRestrictInfoOpen ;
typedef int DimensionRestrictInfoClosed ;
typedef TYPE_2__ DimensionRestrictInfo ;




 int ERROR ;
 int * dimension_restrict_info_closed_slices (int *) ;
 int * dimension_restrict_info_open_slices (int *) ;
 int elog (int ,char*) ;

__attribute__((used)) static DimensionVec *
dimension_restrict_info_slices(DimensionRestrictInfo *dri)
{
 switch (dri->dimension->type)
 {
  case 128:
   return dimension_restrict_info_open_slices((DimensionRestrictInfoOpen *) dri);
  case 129:
   return dimension_restrict_info_closed_slices((DimensionRestrictInfoClosed *) dri);
  default:
   elog(ERROR, "unknown dimension type");
   return ((void*)0);
 }
}
