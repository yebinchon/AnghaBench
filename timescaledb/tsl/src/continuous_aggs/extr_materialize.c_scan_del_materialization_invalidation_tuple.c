
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int tuple; int scanrel; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_11__ {scalar_t__ lowest_modified_value; scalar_t__ greatest_modified_value; } ;
struct TYPE_10__ {scalar_t__ lowest_modified_value; scalar_t__ greatest_modified_value; } ;
struct TYPE_9__ {scalar_t__ materialization_invalidation_threshold; int * invalidations; int mctx; } ;
typedef int ScanTupleResult ;
typedef int MemoryContext ;
typedef TYPE_2__ InvalidationScanState ;
typedef TYPE_3__ Invalidation ;
typedef TYPE_4__* Form_continuous_aggs_materialization_invalidation_log ;


 int Assert (int) ;
 scalar_t__ GETSTRUCT (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int SCAN_CONTINUE ;
 int lappend (int ,TYPE_3__*) ;
 TYPE_3__* palloc (int) ;
 int ts_catalog_delete (int ,int ) ;

__attribute__((used)) static ScanTupleResult
scan_del_materialization_invalidation_tuple(TupleInfo *ti, void *data)
{
 InvalidationScanState *scan_state = (InvalidationScanState *) data;

 MemoryContext old_ctx = MemoryContextSwitchTo(scan_state->mctx);
 Form_continuous_aggs_materialization_invalidation_log invalidation_form =
  ((Form_continuous_aggs_materialization_invalidation_log) GETSTRUCT(ti->tuple));
 Invalidation *invalidation = palloc(sizeof(*invalidation));

 invalidation->lowest_modified_value = invalidation_form->lowest_modified_value;
 invalidation->greatest_modified_value = invalidation_form->greatest_modified_value;

 Assert(invalidation->lowest_modified_value <= invalidation->greatest_modified_value);




 if (invalidation->lowest_modified_value < scan_state->materialization_invalidation_threshold)
 {
  *scan_state->invalidations = lappend(*scan_state->invalidations, invalidation);
  ts_catalog_delete(ti->scanrel, ti->tuple);
 }

 MemoryContextSwitchTo(old_ctx);

 return SCAN_CONTINUE;
}
