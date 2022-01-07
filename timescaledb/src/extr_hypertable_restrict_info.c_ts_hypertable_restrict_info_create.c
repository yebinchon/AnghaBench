
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* space; } ;
struct TYPE_8__ {int num_dimensions; int ** dimension_restriction; } ;
struct TYPE_7__ {int num_dimensions; int * dimensions; } ;
typedef int RelOptInfo ;
typedef TYPE_2__ HypertableRestrictInfo ;
typedef TYPE_3__ Hypertable ;
typedef int DimensionRestrictInfo ;


 int * dimension_restrict_info_create (int *) ;
 TYPE_2__* palloc0 (int) ;

HypertableRestrictInfo *
ts_hypertable_restrict_info_create(RelOptInfo *rel, Hypertable *ht)
{
 int num_dimensions = ht->space->num_dimensions;
 HypertableRestrictInfo *res =
  palloc0(sizeof(HypertableRestrictInfo) + sizeof(DimensionRestrictInfo *) * num_dimensions);
 int i;

 res->num_dimensions = num_dimensions;

 for (i = 0; i < num_dimensions; i++)
 {
  DimensionRestrictInfo *dri = dimension_restrict_info_create(&ht->space->dimensions[i]);

  res->dimension_restriction[i] = dri;
 }

 return res;
}
