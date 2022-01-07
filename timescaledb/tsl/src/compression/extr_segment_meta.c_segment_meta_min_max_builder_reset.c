
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int empty; int has_null; scalar_t__ max; scalar_t__ min; int type_by_val; } ;
typedef TYPE_1__ SegmentMetaMinMaxBuilder ;


 int DatumGetPointer (scalar_t__) ;
 int pfree (int ) ;

void
segment_meta_min_max_builder_reset(SegmentMetaMinMaxBuilder *builder)
{
 if (!builder->empty)
 {
  if (!builder->type_by_val)
  {
   pfree(DatumGetPointer(builder->min));
   pfree(DatumGetPointer(builder->max));
  }
  builder->min = 0;
  builder->max = 0;
 }
 builder->empty = 1;
 builder->has_null = 0;
}
