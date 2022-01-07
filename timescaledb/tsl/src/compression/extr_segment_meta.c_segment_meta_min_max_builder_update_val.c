
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int empty; int type_len; int type_by_val; void* max; int ssup; void* min; } ;
typedef TYPE_1__ SegmentMetaMinMaxBuilder ;
typedef int Datum ;


 int ApplySortComparator (void*,int,int ,int,int *) ;
 int DatumGetPointer (void*) ;
 void* datumCopy (int ,int ,int ) ;
 int pfree (int ) ;

void
segment_meta_min_max_builder_update_val(SegmentMetaMinMaxBuilder *builder, Datum val)
{
 int cmp;

 if (builder->empty)
 {
  builder->min = datumCopy(val, builder->type_by_val, builder->type_len);
  builder->max = datumCopy(val, builder->type_by_val, builder->type_len);
  builder->empty = 0;
  return;
 }

 cmp = ApplySortComparator(builder->min, 0, val, 0, &builder->ssup);
 if (cmp > 0)
 {
  if (!builder->type_by_val)
   pfree(DatumGetPointer(builder->min));
  builder->min = datumCopy(val, builder->type_by_val, builder->type_len);
 }

 cmp = ApplySortComparator(builder->max, 0, val, 0, &builder->ssup);
 if (cmp < 0)
 {
  if (!builder->type_by_val)
   pfree(DatumGetPointer(builder->max));
  builder->max = datumCopy(val, builder->type_by_val, builder->type_len);
 }
}
