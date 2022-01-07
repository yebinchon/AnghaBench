
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type_len; scalar_t__ max; scalar_t__ empty; } ;
typedef TYPE_1__ SegmentMetaMinMaxBuilder ;
typedef scalar_t__ Datum ;


 int DatumGetPointer (scalar_t__) ;
 int ERROR ;
 int PG_DETOAST_DATUM_PACKED (scalar_t__) ;
 scalar_t__ PointerGetDatum (int ) ;
 int elog (int ,char*) ;
 int pfree (int ) ;

Datum
segment_meta_min_max_builder_max(SegmentMetaMinMaxBuilder *builder)
{
 if (builder->empty)
  elog(ERROR, "trying to get max from an empty builder");
 if (builder->type_len == -1)
 {
  Datum unpacked = PointerGetDatum(PG_DETOAST_DATUM_PACKED(builder->max));
  if (builder->max != unpacked)
   pfree(DatumGetPointer(builder->max));
  builder->max = unpacked;
 }
 return builder->max;
}
