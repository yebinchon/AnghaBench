
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* dimension; } ;
struct TYPE_7__ {int num_dimensions; TYPE_3__** dimension_restriction; } ;
struct TYPE_6__ {scalar_t__ column_attno; } ;
typedef TYPE_2__ HypertableRestrictInfo ;
typedef TYPE_3__ DimensionRestrictInfo ;
typedef scalar_t__ AttrNumber ;



__attribute__((used)) static DimensionRestrictInfo *
hypertable_restrict_info_get(HypertableRestrictInfo *hri, AttrNumber attno)
{
 int i;

 for (i = 0; i < hri->num_dimensions; i++)
 {
  if (hri->dimension_restriction[i]->dimension->column_attno == attno)
   return hri->dimension_restriction[i];
 }
 return ((void*)0);
}
