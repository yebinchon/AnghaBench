
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int base; } ;
struct TYPE_8__ {int base; } ;
struct TYPE_7__ {int type; } ;
typedef int DimensionRestrictInfo ;
typedef TYPE_1__ Dimension ;




 int ERROR ;
 TYPE_5__* dimension_restrict_info_closed_create (TYPE_1__*) ;
 TYPE_2__* dimension_restrict_info_open_create (TYPE_1__*) ;
 int elog (int ,char*) ;

__attribute__((used)) static DimensionRestrictInfo *
dimension_restrict_info_create(Dimension *d)
{
 switch (d->type)
 {
  case 128:
   return &dimension_restrict_info_open_create(d)->base;
  case 129:
   return &dimension_restrict_info_closed_create(d)->base;
  default:
   elog(ERROR, "unknown dimension type");
   return ((void*)0);
 }
}
